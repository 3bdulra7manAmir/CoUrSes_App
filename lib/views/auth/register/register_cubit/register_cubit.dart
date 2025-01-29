// ignore_for_file: unused_local_variable
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'register_state.dart';

class FirebaseRegisterCubit extends Cubit<RegisterStates> 
{
  FirebaseRegisterCubit() : super(RegisterInitialState());

  Future<void> firebaseRegister(String uEmail, String uPassword, context) async
  {
    try
    {
      emit(RegisterLoadingState());
      UserCredential uCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: uEmail, password: uPassword);
      if (uCredential.user != null)
      {
        emit(RegisterSuccessState(userData: uCredential.user!));
      }
      else
      {
        emit(RegisterFailureState(errorMessage: 'User registration succeeded but user details are unavailable.'));
      }
    }
    on FirebaseAuthException catch (e)
    {
      emit(RegisterFailureState(errorMessage: e.toString()));
    }
    catch (e)
    {
      emit(RegisterFailureState(errorMessage: 'An unexpected error occurred during registration.'));
    }
}

}

