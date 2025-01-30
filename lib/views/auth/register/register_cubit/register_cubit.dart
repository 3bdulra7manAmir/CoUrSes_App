// ignore_for_file: unused_local_variable
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

part 'register_state.dart';

class FirebaseRegisterCubit extends Cubit<RegisterStates> 
{
  FirebaseRegisterCubit() : super(RegisterInitialState());

  Future<void> firebaseRegister(String uEmail, String uPassword, context) async
  {
    try
    {
      emit(RegisterEmailLoadingState());
      UserCredential uCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: uEmail, password: uPassword);
      if (uCredential.user != null)
      {
        emit(RegisterEmailSuccessState(userData: uCredential.user!));
      }
      else
      {
        emit(RegisterEmailFailureState(errorMessage: 'User registration succeeded but user details are unavailable.'));
      }
    }
    on FirebaseAuthException catch (e)
    {
      emit(RegisterEmailFailureState(errorMessage: e.toString()));
    }
    catch (e)
    {
      emit(RegisterEmailFailureState(errorMessage: 'An unexpected error occurred during registration.'));
    }
  }

  Future<void> addUserFirstName(TextEditingController firstNameController) async
  {
    try
    {
      // Get the first name from the text field
      String firstName = firstNameController.text.trim();

      // Validate if the first name is not empty
      if (firstName.isEmpty)
      {
        throw Exception("First name cannot be empty");
      }

      // Emit a loading state (assuming you're using a state management approach like Bloc/Cubit)
      emit(RegisterFirstNameLoadingState());

      // Add the first name to Firestore
      await FirebaseFirestore.instance.collection('users').add({
        'firstName': firstName,
        'timestamp': FieldValue.serverTimestamp(), // Optional: Add a timestamp
      });

      // Clear the text field
      firstNameController.clear();

      // Emit a success state (optional, depending on your state management)
      emit(RegisterFirstNameSuccessState(userFirstName: firstName));

      // Show a success message (optional)
      print('First name added to Firestore!');
    }
    catch (e)
    {
      // Emit an error state with the error message
      emit(RegisterFirstNameFailureState(errorMessage: e.toString()));

      // Log the error for debugging
      print('Error adding first name to Firestore: $e');
    }
  }

}

