// ignore_for_file: unused_local_variable
import 'package:bloc/bloc.dart';
import 'package:courses_app/Core/utils/styles.dart';
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
      emit(RegisterLoadingState());
      UserCredential uCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: uEmail, password: uPassword);
      if (uCredential.user != null)
      {
        emit(RegisterSuccessState(userData: uCredential.user!));
      }
      else
      {
        emit(RegisterFailureState(errorMessage: 'User registration succeeded but user details are unavailable.'));
      }
    }
    on FirebaseAuthException catch (e)
    {
      emit(RegisterFailureState(errorMessage: e.toString()));
    }
    catch (e)
    {
      emit(RegisterFailureState(errorMessage: 'An unexpected error occurred during registration.'));
    }
}

}

class SignUpValidator
{
  String? validateEmail(String? value)
  {
    if (value == null || value.trim().isEmpty)
    {
      return 'Email is required';
    }
    // Updated regex for stricter email validation
    final emailRegex = RegExp(
        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!emailRegex.hasMatch(value))
    {
      return 'Enter a valid email address';
    }
    return null;
  }

  String? validatePassword(String? value)
  {
    if (value == null || value.isEmpty)
    {
      return 'Password is required';
    }
    if (value.length < 8)
    {
      return 'at least 8 characters';
    }
    // Add criteria for stronger password validation
    final passwordRegex = RegExp(
        r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#\$&*~]).{8,}$');
    if (!passwordRegex.hasMatch(value))
    {
      return 'at least one uppercase letter,\n '
      'one lowercase letter, one number\nand one special character';
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