part of 'register_cubit.dart';

abstract class RegisterStates {}

class RegisterInitialState extends RegisterStates {}

class RegisterEmailLoadingState extends RegisterStates {}
class RegisterEmailSuccessState extends RegisterStates {}

class RegisterEmailFailureState extends RegisterStates
{
  RegisterEmailFailureState(this.errorMessage);
  final FirebaseAuthException errorMessage;
}

//--------------------------------------------------//

class RegisterFNLoadingState extends RegisterStates {}
class RegisterFNSuccessState extends RegisterStates {}

class RegisterFNFailureState extends RegisterStates
{
  RegisterFNFailureState({required this.errorMessage});
  final String errorMessage;
}