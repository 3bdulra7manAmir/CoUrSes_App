part of 'login_cubit.dart';

abstract class LoginStates {}

final class LoginInitialState extends LoginStates {}

final class LoginLoadingState extends LoginStates {}

class LoginSuccessState extends LoginStates
{
  final String userName;
  LoginSuccessState({required this.userName});
}

final class LoginFailureState extends LoginStates
{
  final String errorMessage;
  LoginFailureState({required this.errorMessage });
}

final class LoginPasswordVisibilityToggledState extends LoginStates
{
  final bool isPasswordObscured;
  LoginPasswordVisibilityToggledState({required this.isPasswordObscured});
}

