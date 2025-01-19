import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

abstract class Failure
{
  final String errorMessage;
  const Failure(this.errorMessage);
}

class FirebaseRegistionFailure extends Failure
{
  FirebaseRegistionFailure(super.errorMessage);

  factory FirebaseRegistionFailure.fromFirebaseError(FirebaseAuthException e, BuildContext context)
  {
    switch (e.code)
    {
      case 'weak-password':
        return FirebaseRegistionFailure.showError(context, 'The password provided is too weak.');
      case 'email-already-in-use':
        return FirebaseRegistionFailure.showError(context, 'The account already exists for that email.');
      case 'invalid-email':
        return FirebaseRegistionFailure.showError(context, 'The email address is badly formatted.');
      case 'operation-not-allowed':
        return FirebaseRegistionFailure.showError(context, 'Email & Password Accounts are not enabled.');
      default:
        return FirebaseRegistionFailure.showError(context, 'An error occurred. Please try again later.');
    }
  }

  static FirebaseRegistionFailure showError(BuildContext context, String message)
  {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
    return FirebaseRegistionFailure(message);
  }
}
