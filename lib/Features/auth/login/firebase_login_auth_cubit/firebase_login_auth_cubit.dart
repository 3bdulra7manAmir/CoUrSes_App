// ignore_for_file: unused_local_variable

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'firebase_login_auth_state.dart';

class FirebaseLoginAuthCubit extends Cubit<FirebaseLoginAuthStates> 
{
  FirebaseLoginAuthCubit() : super(FirebaseLoginAuthInitialState());

  Future<void> firebaseRegisterAuth(String uEmail, String uPassword) async
  {
    try
    {
      emit(FirebaseLoginAuthLoading());
      UserCredential uCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: uEmail, password: uPassword);
    }
    on FirebaseAuthException catch (e)
    {
      if (e.code == 'weak-password')
      {
        emit(FirebaseLoginAuthFailure(errorMessage: 'The Password Provided is Too Weak.'));
        // print('The Password Provided is Too Weak.');
      }
      else if (e.code == 'email-already-in-use')
      {
        emit(FirebaseLoginAuthFailure(errorMessage: 'The Email Address is Already Taken.'));
        //print('The Account Already Exists For That Email.');
      }
    }
    catch (e)
    {
      emit(FirebaseLoginAuthFailure(errorMessage: e.toString()));
      //print(e);
    }
  }


}
