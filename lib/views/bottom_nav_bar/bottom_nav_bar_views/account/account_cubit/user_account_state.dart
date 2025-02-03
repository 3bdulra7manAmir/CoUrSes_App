part of 'user_account_cubit.dart';

@immutable
sealed class FirebaseUserAccountStates {}

final class UserAccountInitialState extends FirebaseUserAccountStates {}

final class UserAccountLoadingState extends FirebaseUserAccountStates {}

final class UserAccountSuccessState extends FirebaseUserAccountStates
{
  final String imageUrl;
  UserAccountSuccessState(this.imageUrl);
}

final class UserAccountFailureState extends FirebaseUserAccountStates
{
  final String errorMessage;
  UserAccountFailureState(this.errorMessage);
}
