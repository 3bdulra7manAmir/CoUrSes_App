// ignore_for_file: unused_local_variable
import 'package:bloc/bloc.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

part 'firebase_register_state.dart';

class FirebaseRegisterCubit extends Cubit<RegisterStates> 
{
  FirebaseRegisterCubit() : super(RegisterInitialState());

  Future<void> firebaseRegister(String uEmail, String uPassword, context) async
  {
    try
    {
      emit(RegisterLoadingState());
      UserCredential uCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: uEmail, password: uPassword);
      emit(RegisterSuccessState(userData: uCredential.user!));
      // if (uCredential.user != null)
      // {
      //   emit(RegisterSuccessState(userData: uCredential.user!)); //
      // }
      // else
      // {
      //   emit(RegisterFailureState(errorMessage: 'User registration succeeded but user details are unavailable.'));
      // }
    }
    on Exception catch (e)
    {
      emit(RegisterFailureState(errorMessage: e.toString()));
    }
}

}

class SignUpValidator
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
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Account Created Successfully!', style: Styles.textStyle16,)),);
    }
    else if (formKey.currentState!.validate() && !isChecked)
    {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('You Must Accept The Terms & Conditions', style: Styles.textStyle16,)),);
    }
    else if (!(formKey.currentState!.validate()) && isChecked)
    {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Wrong Email Or Password!', style: Styles.textStyle16,)),);
    }
    else if (!(formKey.currentState!.validate()) && !isChecked)
    {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Fill The Fields Correctly Please!', style: Styles.textStyle16,)),);
    }
  }
  
}