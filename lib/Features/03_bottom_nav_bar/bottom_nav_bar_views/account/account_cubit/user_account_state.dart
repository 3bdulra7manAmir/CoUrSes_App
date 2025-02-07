abstract class FirebaseUserAccountStates {}

class FirebaseUserAccountInitial extends FirebaseUserAccountStates {}
class FirebaseUserAccountLoading extends FirebaseUserAccountStates {}


class FirebaseUserAccountSuccess extends FirebaseUserAccountStates
{
  final String imageBase64; // Base64 encoded image
  FirebaseUserAccountSuccess(this.imageBase64);
}


class FirebaseUserAccountFailure extends FirebaseUserAccountStates
{
  final String errorMessage;
  FirebaseUserAccountFailure(this.errorMessage);
}