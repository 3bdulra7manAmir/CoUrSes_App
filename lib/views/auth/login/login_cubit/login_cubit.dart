// ignore_for_file: unused_local_variable, unnecessary_nullable_for_final_variable_declarations

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';


part 'login_state.dart';

class FirebaseLoginCubit extends Cubit<LoginStates> 
{
  FirebaseLoginCubit() : super(LoginInitialState());

  bool isPasswordObscured = true;
  void togglePasswordVisibility()
  {
    isPasswordObscured = !isPasswordObscured;
    emit(LoginPasswordVisibilityToggledState(isPasswordObscured: isPasswordObscured));
  }

  Future<void> firebaseLogin(String uEmail, String uPassword) async
  {
    try
    {
      emit(LoginLoadingState());
      UserCredential uCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: uEmail, password: uPassword);

      if (uCredential.user != null)
      {
        String? userName = uCredential.user?.displayName;
        print("Login successful! User's name: ${userName ?? 'No Name'}");

        emit(LoginSuccessState(userName: userName ?? ''));
      }
      else
      {
        print("Login successful, but no user details found.");
        emit(LoginFailureState(errorMessage: 'User details unavailable.'));
      }
    }
    on FirebaseAuthException catch (e)
    {
      print("FirebaseAuthException: ${e.message}");
      emit(LoginFailureState(errorMessage: e.message ?? 'Authentication Error'));
    }
    catch (e)
    {
      print("General Exception: ${e.toString()}");
      emit(LoginFailureState(errorMessage: 'An error occurred: ${e.toString()}'));
    }
  }
}