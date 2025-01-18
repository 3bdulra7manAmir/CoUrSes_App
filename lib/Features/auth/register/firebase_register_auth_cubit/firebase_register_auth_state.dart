part of 'firebase_register_auth_cubit.dart';

abstract class FirebaseRegisterStates {}

final class FirebaseRegisterInitialState extends FirebaseRegisterStates {}
final class FirebaseRegisterLoadingState extends FirebaseRegisterStates {}
final class FirebaseRegisterSuccessState extends FirebaseRegisterStates{}

final class FirebaseRegisterFailureState extends FirebaseRegisterStates
{
  final String errorMessage;
  FirebaseRegisterFailureState({required this.errorMessage});
}
  

