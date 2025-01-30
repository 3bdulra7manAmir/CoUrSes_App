import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

part 'register_state.dart';

class FirebaseRegisterCubit extends Cubit<RegisterStates>
{
  FirebaseRegisterCubit() : super(RegisterInitialState());

  static bool isEmailRegistered = false;
  static bool isFirstNameAdded = false;

  Future<void> firebaseRegister(String uEmail, String uPassword, BuildContext context) async
  {
    try
    {
      emit(RegisterEmailLoadingState());
      UserCredential uCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: uEmail, password: uPassword,);

      if (uCredential.user != null)
      {
        emit(RegisterEmailSuccessState());
        isEmailRegistered = true;
      }

      // else
      // {
      //   emit(RegisterEmailFailureState(
      //     FirebaseAuthException(
      //       code: 'unknown-error',
      //       message: 'User registration succeeded but user details are unavailable.',
      //     ),
      //   ));
      // }
    }

    on FirebaseAuthException catch (e)
    {
      emit(RegisterEmailFailureState(e));
    }

    catch (e)
    {
      emit(RegisterEmailFailureState(
        FirebaseAuthException(
          code: 'unknown-error',
          message: 'An unexpected error occurred during registration.',
        ),
      ));
    }
  }

  Future<void> addUserFirstNameFireCloud(TextEditingController firstNameController, BuildContext context) async
  {
    try
    {
      String firstName = firstNameController.text.trim();
      // if (firstName.isEmpty)
      // {
      //   FirestoreUserFNFailure.showError(context, 'First name cannot be empty.');
      //   return;
      // }

      emit(RegisterFNLoadingState());
      DocumentReference docRef = await FirebaseFirestore.instance.collection('User FN').add({
        'First Name': firstName,
        'Time Stamp': FieldValue.serverTimestamp(),
      });

      // Verify that the document was successfully added
      DocumentSnapshot docSnapshot = await docRef.get();
      if (docSnapshot.exists)
      {
        emit(RegisterFNSuccessState());
        isFirstNameAdded = true;
      }

      // else
      // {
      //   emit(RegisterFNFailureState(errorMessage: 'Failed to add first name to Firestore.',));
      // }
    }

    on FirebaseException catch (e)
    {
      emit(RegisterFNFailureState(errorMessage: e.toString()));
    }

    catch (e)
    {
      emit(RegisterFNFailureState(errorMessage: e.toString()));
    }
  }

}

bool loginAllower()
  {
    if (FirebaseRegisterCubit.isEmailRegistered == true && FirebaseRegisterCubit.isFirstNameAdded == true )
    {
      return true;
    }
    else
    {
      return false;
    }
  }