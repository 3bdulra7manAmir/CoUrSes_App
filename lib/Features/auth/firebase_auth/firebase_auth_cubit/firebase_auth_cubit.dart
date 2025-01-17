// ignore_for_file: unused_local_variable

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'firebase_auth_state.dart';

class FirebaseRegisterAuthCubit extends Cubit<FirebaseRegisterAuthStates> 
{
  FirebaseRegisterAuthCubit() : super(FirebaseRegisterAuthInitialState());

  Future<void> firebaseRegisterAuth(String uEmail, String uPassword) async
  {
    try
    {
      emit(FirebaseRegisterAuthLoading());
      UserCredential uCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: uEmail, password: uPassword);
    }
    on FirebaseAuthException catch (e)
    {
      if (e.code == 'weak-password')
      {
        emit(FirebaseRegisterAuthFailure(errorMessage: 'The Password Provided is Too Weak.'));
        // print('The Password Provided is Too Weak.');
      }
      else if (e.code == 'email-already-in-use')
      {
        emit(FirebaseRegisterAuthFailure(errorMessage: 'The Email Address is Already Taken.'));
        //print('The Account Already Exists For That Email.');
      }
    }
    catch (e)
    {
      emit(FirebaseRegisterAuthFailure(errorMessage: e.toString()));
      //print(e);
    }
  }


}
