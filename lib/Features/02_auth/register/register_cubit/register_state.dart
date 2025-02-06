part of 'register_cubit.dart';

abstract class RegisterStates {}

class RegisterInitialState extends RegisterStates {}

//--------------------------------------------------//

class RegisterEmailLoadingState extends RegisterStates {}
class RegisterEmailSuccessState extends RegisterStates {}

class RegisterEmailFailureState extends RegisterStates
{
  RegisterEmailFailureState(this.errorMessage);
  final FirebaseAuthException errorMessage;
}

//--------------------------------------------------//

final class RegisterPasswordVisibilityToggledState extends RegisterStates
{
  final bool isPasswordObscured;
  RegisterPasswordVisibilityToggledState({required this.isPasswordObscured});
}

final class RegisterCheckboxToggledState extends RegisterStates
{
  final bool isChecked;
  RegisterCheckboxToggledState({required this.isChecked});
}

//--------------------------------------------------//

class RegisterFNLoadingState extends RegisterStates {}
class RegisterFNSuccessState extends RegisterStates {}

class RegisterFNFailureState extends RegisterStates
{
  RegisterFNFailureState({required this.errorMessage});
  final String errorMessage;
}