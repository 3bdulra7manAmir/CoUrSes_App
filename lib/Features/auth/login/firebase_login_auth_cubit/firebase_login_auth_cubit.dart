// ignore_for_file: unused_local_variable

import 'package:bloc/bloc.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

part 'firebase_login_auth_state.dart';

class FirebaseLoginCubit extends Cubit<LoginStates> 
{
  FirebaseLoginCubit() : super(LoginInitialState());

  Future<void> firebaseLogin(String uEmail, String uPassword) async
  {
    try
    {
      emit(LoginLoadingState());
      UserCredential uCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: uEmail, password: uPassword);

      if (uCredential.user != null)
      {
        emit(LoginSuccessState(uData: uCredential));
      }
      else
      {
        emit(LoginFailureState(errorMessage: 'User Login Succeeded but User Details are Unavailable.'));
      }
    }
    on Exception catch (e)
    {
      emit(LoginFailureState(errorMessage: e.toString()));
    }
  }
}


class LoginValidator
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

  void submitForm(GlobalKey<FormState> loginFormKey, context)
  {
    if (!(loginFormKey.currentState!.validate()))
    {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Wrong Email Or Password', style: Styles.textStyle16,)),);
    }
  }
}