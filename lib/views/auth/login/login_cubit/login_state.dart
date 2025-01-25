part of 'login_cubit.dart';

abstract class LoginStates {}

final class LoginInitialState extends LoginStates {}

final class LoginLoadingState extends LoginStates {}

final class LoginSuccessState extends LoginStates
{
  LoginSuccessState({required this.uData });
  final UserCredential uData;
}

final class LoginFailureState extends LoginStates
{
  final String errorMessage;

  LoginFailureState({required this.errorMessage });
}

