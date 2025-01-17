import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'firebase_auth_state.dart';

class FirebaseRegisterAuthCubit extends Cubit<FirebaseRegisterAuthStates> 
{
  FirebaseRegisterAuthCubit() : super(FirebaseRegisterAuthInitialState());


}
