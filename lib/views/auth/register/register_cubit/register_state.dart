part of 'register_cubit.dart';

abstract class RegisterStates {}

final class RegisterInitialState extends RegisterStates {}
final class RegisterLoadingState extends RegisterStates {}


final class RegisterSuccessState extends RegisterStates
{
  RegisterSuccessState({required this.userData});
  final User userData;
}


final class RegisterFailureState extends RegisterStates
{
  RegisterFailureState({required this.errorMessage});
  final String errorMessage;
}
  

