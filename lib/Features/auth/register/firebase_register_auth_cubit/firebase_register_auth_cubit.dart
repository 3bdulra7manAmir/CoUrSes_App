// ignore_for_file: unused_local_variable

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

part 'firebase_register_auth_state.dart';

class FirebaseRegisterCubit extends Cubit<FirebaseRegisterStates> 
{
  FirebaseRegisterCubit() : super(FirebaseRegisterInitialState());

  Future<void> firebaseRegister(String uEmail, String uPassword) async
  {
    try
    {
      emit(FirebaseRegisterLoadingState());
      UserCredential uCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: uEmail, password: uPassword);
    }
    on FirebaseAuthException catch (e)
    {
      
      emit(FirebaseRegisterFailureState(errorMessage: e.code));
      //print(e);
    }
    catch (e)
    {
      emit(FirebaseRegisterFailureState(errorMessage: e.toString()));
      //print(e);
    }
  }

}

class Validation
{
  String? validateEmail(String? value)
  {
    if (value == null || value.isEmpty)
    {
      return 'Email is required';
    }
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value))
    {
      return 'Enter a valid email';
    }
    return null;
  }

  String? validatePassword(String? value)
  {
    if (value == null || value.isEmpty)
    {
      return 'Password is required';
    }
    if (value.length < 6)
    {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  void submitForm(GlobalKey<FormState> formKey, bool isChecked, context)
  {
    if (formKey.currentState!.validate() && isChecked)
    {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Account Created Successfully!')),
      );
    }
    else if (!isChecked)
    {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('You Must Accept The Terms & Conditions')),
      );
    }
  }
}





// class RegisterCheckboxCubit extends Cubit<bool>
// {
//   RegisterCheckboxCubit() : super(false);

//   bool isCheckedCheckBox = false;
  
//   void toggleCheckbox(bool value)
//   {
//     emit(value);
//   }
// }