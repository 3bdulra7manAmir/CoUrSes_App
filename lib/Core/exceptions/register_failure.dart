import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

abstract class Failure {
  final String errorMessage;
  const Failure(this.errorMessage);
}

class FirebaseEPFailure extends Failure {
  FirebaseEPFailure(super.errorMessage);

  factory FirebaseEPFailure.fromFirebaseError(FirebaseAuthException e) {
    switch (e.code) {
      case 'weak-password':
        return FirebaseEPFailure('The password provided is too weak.');
      case 'email-already-in-use':
        return FirebaseEPFailure('The account already exists for that email.');
      case 'invalid-email':
        return FirebaseEPFailure('The email address is badly formatted.');
      case 'operation-not-allowed':
        return FirebaseEPFailure('Email & Password Accounts are not enabled.');
      default:
        return FirebaseEPFailure('An error occurred. Please try again later.');
    }
  }

  static void showError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }
}

class FirebaseUFNFailure extends Failure {
  FirebaseUFNFailure(super.errorMessage);

  factory FirebaseUFNFailure.fromFirestoreError(dynamic error, BuildContext context) {
    String errorMessage = 'An error occurred. Please try again later.';

    if (error is FirebaseException) {
      switch (error.code) {
        case 'permission-denied':
          errorMessage = 'You do not have permission to perform this operation.';
          break;
        case 'not-found':
          errorMessage = 'The requested document was not found.';
          break;
        case 'unavailable':
          errorMessage = 'The service is currently unavailable. Please try again later.';
          break;
        default:
          errorMessage = 'An error occurred: ${error.message}';
          break;
      }
    } else if (error is String) {
      errorMessage = error;
    }

    return FirebaseUFNFailure.showError(context, errorMessage);
  }

  static FirebaseUFNFailure showError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
    return FirebaseUFNFailure(message);
  }
}