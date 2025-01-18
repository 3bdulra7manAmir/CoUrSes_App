import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseAuthRegisterFailure
{
  FirebaseAuthRegisterFailure(FirebaseAuthException e, context)
  {
    switch (e.code)
    {
      case 'weak-password':
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('The password provided is too weak.')));
        break;
      case 'email-already-in-use':
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('The account already exists for that email.')));
        break;
      case 'invalid-email':
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('The email address is badly formatted.')));
        break;
      case 'operation-not-allowed':
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Email & Password Accounts are not enabled.')));
        break;
      default:
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('An error occurred. Please try again later.')));
    }
  }
}
