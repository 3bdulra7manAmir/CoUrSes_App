part of 'firebase_login_auth_cubit.dart';

abstract class FirebaseLoginAuthStates {}

final class FirebaseLoginAuthInitialState extends FirebaseLoginAuthStates {}
final class FirebaseLoginAuthLoading extends FirebaseLoginAuthStates {}

final class FirebaseLoginAuthSuccess extends FirebaseLoginAuthStates
{
  FirebaseLoginAuthSuccess({required this.uCredential });
  final UserCredential uCredential;
}

final class FirebaseLoginAuthFailure extends FirebaseLoginAuthStates
{
  final String errorMessage;

  FirebaseLoginAuthFailure({required this.errorMessage });
}

