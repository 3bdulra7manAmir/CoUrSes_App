import 'dart:io';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:courses_app/Features/03_bottom_nav_bar/bottom_nav_bar_views/account/account_cubit/user_account_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';


class FirebaseUserAccountCubit extends Cubit<FirebaseUserAccountStates>
{
  FirebaseUserAccountCubit() : super(FirebaseUserAccountInitial());

  /// Uploads the user's profile image as a Base64 encoded string to Firestore.
  Future<void> uploadUserImage() async
  {
    emit(FirebaseUserAccountLoading());
    try
    {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile == null)
      {
        emit(FirebaseUserAccountFailure("No image selected."));
        return;
      }

      File imageFile = File(pickedFile.path);
      String userId = FirebaseAuth.instance.currentUser?.uid ?? "";

      if (userId.isEmpty)
      {
        emit(FirebaseUserAccountFailure("User not logged in."));
        return;
      }

      // Read the image file and convert it to a Base64 encoded string
      List<int> imageBytes = await imageFile.readAsBytes();
      String base64Image = base64Encode(imageBytes);

      // Store the Base64 encoded image in Firestore
      await FirebaseFirestore.instance.collection("users").doc(userId).update({"imageBase64": base64Image});

      emit(FirebaseUserAccountSuccess(base64Image));
      print("✅ Image uploaded successfully as Base64.");
    }

    on FirebaseException catch (e)
    {
      emit(FirebaseUserAccountFailure("Firebase error: ${e.message}"));
      print("❌ Firebase error: ${e.message}");
    }
    
    catch (e)
    {
      emit(FirebaseUserAccountFailure("Error uploading image: $e"));
      print("❌ Error uploading image: $e");
    }
  }

  /// Fetches the user's profile image (Base64 encoded) from Firestore.
  Future<void> fetchUserImage() async
  {
    emit(FirebaseUserAccountLoading());
    try
    {
      User? user = FirebaseAuth.instance.currentUser;
      if (user == null)
      {
        emit(FirebaseUserAccountFailure("User not logged in."));
        return;
      }

      // Fetch the user document from Firestore
      DocumentSnapshot userDoc = await FirebaseFirestore.instance.collection("users").doc(user.uid).get();

      // Check if the document exists and contains the imageBase64 field
      if (!userDoc.exists || !userDoc.data().toString().contains("imageBase64"))
      {
        emit(FirebaseUserAccountFailure("No profile image found."));
        return;
      }

      // Get the Base64 encoded image from Firestore
      String base64Image = userDoc["imageBase64"];
      emit(FirebaseUserAccountSuccess(base64Image));
      print("✅ Profile image retrieved as Base64.");
    }
    
    on FirebaseException catch (e)
    {
      emit(FirebaseUserAccountFailure("Firebase error: ${e.message}"));
      print("❌ Firebase error: ${e.message}");
    }
    
    catch (e)
    {
      emit(FirebaseUserAccountFailure("Error retrieving image: $e"));
      print("❌ Error retrieving image: $e");
    }
  }
}