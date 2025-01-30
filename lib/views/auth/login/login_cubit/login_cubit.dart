// ignore_for_file: unused_local_variable, unnecessary_nullable_for_final_variable_declarations

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';


part 'login_state.dart';

class FirebaseLoginCubit extends Cubit<LoginStates> 
{
  FirebaseLoginCubit() : super(LoginInitialState());

  Future<void> firebaseLogin(String uEmail, String uPassword) async
  {
    try
    {
      emit(LoginLoadingState());
      UserCredential uCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: uEmail, password: uPassword);

      if (uCredential.user != null)
      {
        emit(LoginSuccessState(uData: uCredential));
      }
      else
      {
        emit(LoginFailureState(errorMessage: 'User Login Succeeded but User Details are Unavailable.'));
      }
    }
    on FirebaseAuthException catch (e)
    {
      emit(LoginFailureState(errorMessage: e.toString()));
    }
    catch (e)
    {
      emit(LoginFailureState(errorMessage: 'An error occurred: ${e.toString()}'));
    }
  }
  

}


