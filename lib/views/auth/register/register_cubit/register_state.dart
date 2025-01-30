part of 'register_cubit.dart';

abstract class RegisterStates {}

final class RegisterInitialState extends RegisterStates {}
final class RegisterEmailLoadingState extends RegisterStates {}


final class RegisterEmailSuccessState extends RegisterStates
{
  RegisterEmailSuccessState({required this.userData});
  final User userData;
}


final class RegisterEmailFailureState extends RegisterStates
{
  RegisterEmailFailureState({required this.errorMessage});
  final String errorMessage;
}



final class RegisterFirstNameLoadingState extends RegisterStates {}

final class RegisterFirstNameSuccessState extends RegisterStates
{
  RegisterFirstNameSuccessState({required this.userFirstName});
  final String userFirstName;
}

final class RegisterFirstNameFailureState extends RegisterStates
{
  RegisterFirstNameFailureState({required this.errorMessage});
  final String errorMessage;
}
  

