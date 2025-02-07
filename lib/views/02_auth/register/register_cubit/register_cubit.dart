import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

part 'register_state.dart';

class FirebaseRegisterCubit extends Cubit<RegisterStates>
{
  FirebaseRegisterCubit() : super(RegisterInitialState());

  static bool isEmailRegistered = false;
  static bool isFirstNameAdded = false;
  bool isPasswordObscured = true;
  bool isChecked = false;

  void toggleCheckbox()
  {
    isChecked = !isChecked;
    emit(RegisterCheckboxToggledState(isChecked: isChecked));
  }

  void togglePasswordVisibility()
  {
    isPasswordObscured = !isPasswordObscured;
    emit(RegisterPasswordVisibilityToggledState(isPasswordObscured: isPasswordObscured));
  }

  Future<void> addUserEPFirebaseAuth(String uEmail, String uPassword, BuildContext context) async
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


  Future<void> addUserFNFirebaseAuth(String firstNameController) async
  {
    try
    {
      String firstName = firstNameController.trim();
      emit(RegisterEmailLoadingState());

      User? user = FirebaseAuth.instance.currentUser;
      
      await user?.updateDisplayName(firstName); // Update FirebaseAuth user profile with the first name
      await user?.reload(); // Refresh user info
      user = FirebaseAuth.instance.currentUser; // Fetch updated user

      if (firstName.isNotEmpty)
      {
        // User has a display name (first name) set
        print("User's first name: $firstName");
        isFirstNameAdded = true;
        emit(RegisterFNSuccessState());
      }
      else
      {
        // Display name is not set
        print("User does not have a first name set.");
        emit(RegisterFNFailureState(errorMessage: 'User does not have a first name set.'));
      }
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