part of 'login_cubit.dart';

abstract class LoginStates {}

final class LoginInitialState extends LoginStates {}

final class LoginLoadingState extends LoginStates {}

final class LoginSuccessState extends LoginStates{}

final class LoginFailureState extends LoginStates
{
  final String errorMessage;

  LoginFailureState({required this.errorMessage });
}

