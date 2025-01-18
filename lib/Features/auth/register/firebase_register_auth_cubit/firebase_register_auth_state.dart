part of 'firebase_register_auth_cubit.dart';

abstract class FirebaseRegisterAuthStates {}

final class FirebaseRegisterAuthInitialState extends FirebaseRegisterAuthStates {}
final class FirebaseRegisterAuthLoading extends FirebaseRegisterAuthStates {}
final class FirebaseRegisterAuthSuccess extends FirebaseRegisterAuthStates
{
  FirebaseRegisterAuthSuccess({required this.uCredential });
  final UserCredential uCredential;

}

final class FirebaseRegisterAuthFailure extends FirebaseRegisterAuthStates
{
  final String errorMessage;

  FirebaseRegisterAuthFailure({required this.errorMessage });
}

