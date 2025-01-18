import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

abstract class Failure
{
  final String errorMessage;
  const Failure(this.errorMessage);
}

class FirebaseRegisterFailure extends Failure
{
  FirebaseRegisterFailure(super.errorMessage);

  factory FirebaseRegisterFailure.fromFirebaseError(FirebaseAuthException e, BuildContext context)
  {
    switch (e.code)
    {
      case 'weak-password':
        return FirebaseRegisterFailure._showError(context, 'The password provided is too weak.');
      case 'email-already-in-use':
        return FirebaseRegisterFailure._showError(context, 'The account already exists for that email.');
      case 'invalid-email':
        return FirebaseRegisterFailure._showError(context, 'The email address is badly formatted.');
      case 'operation-not-allowed':
        return FirebaseRegisterFailure._showError(context, 'Email & Password Accounts are not enabled.');
      default:
        return FirebaseRegisterFailure._showError(context, 'An error occurred. Please try again later.');
    }
  }

  static FirebaseRegisterFailure _showError(BuildContext context, String message)
  {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
    return FirebaseRegisterFailure(message);
  }
}
