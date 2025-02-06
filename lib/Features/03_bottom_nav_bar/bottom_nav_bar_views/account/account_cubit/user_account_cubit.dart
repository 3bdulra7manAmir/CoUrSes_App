// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'user_account_state.dart';

class FirebaseUserAccountCubit extends Cubit<FirebaseUserAccountStates>
{
  FirebaseUserAccountCubit() : super(UserAccountInitialState());

  /// Upload Image to Firebase Storage (Handles PNG, JPG, etc.)
  Future<void> uploadImageToFirebase() async
  {
    emit(UserAccountLoadingState()); // Emit loading state
    try
    {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile == null)
      {
        emit(UserAccountFailureState("No image selected"));
        return;
      }

      File imageFile = File(pickedFile.path);
      String userId = FirebaseAuth.instance.currentUser?.uid ?? "";

      if (userId.isEmpty)
      {
        emit(UserAccountFailureState("User not logged in"));
        return;
      }

      // Extract the file extension (e.g., png, jpg, jpeg)
      String fileExtension = pickedFile.path.split('.').last.toLowerCase();
      Reference storageRef = FirebaseStorage.instance.ref().child("profile_images/$userId.$fileExtension");

      UploadTask uploadTask = storageRef.putFile(imageFile);
      TaskSnapshot snapshot = await uploadTask;

      // Get the download URL after upload
      String imageUrl = await snapshot.ref.getDownloadURL();

      // Update Firestore with the new image URL
      await FirebaseFirestore.instance.collection("users").doc(userId).update({"imageUrl": imageUrl,});

      emit(UserAccountSuccessState(imageUrl)); // Emit success with image URL
      print("✅ Image uploaded successfully: $imageUrl");
    }
    catch (e)
    {
      emit(UserAccountFailureState("Error uploading image: $e"));
      print("❌ Error uploading image: $e");
    }
  }

  /// Retrieve User Profile Image from Firestore
  Future<void> getUserProfileImage() async
  {
    emit(UserAccountLoadingState()); // Emit loading state
    try
    {
      User? user = FirebaseAuth.instance.currentUser;
      if (user == null)
      {
        emit(UserAccountFailureState("User not logged in"));
        return;
      }

      DocumentSnapshot userDoc = await FirebaseFirestore.instance.collection("users").doc(user.uid).get();

      if (!userDoc.exists || !userDoc.data().toString().contains("imageUrl"))
      {
        emit(UserAccountFailureState("No profile image found"));
        return;
      }

      String imageUrl = userDoc["imageUrl"];
      emit(UserAccountSuccessState(imageUrl)); // Emit success with image URL
      print("✅ Profile image retrieved: $imageUrl");
    }
    catch (e)
    {
      emit(UserAccountFailureState("Error retrieving image: $e"));
      print("❌ Error retrieving image: $e");
    }
  }

}
