import 'package:courses_app/Features/auth/login/login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> firebaseLoginAuth(String uEmail, String uPassword) async
{
  try
  {
    UserCredential uCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: uEmail, password: uPassword);
    if(uEmail == uCredential.user!.email)
    {
      LoginView.isUserSigned = true;
    }
  }
  on FirebaseAuthException catch (e)
  {
    if (e.code == 'user-not-found')
    {
      print('No user found for that email.');
    }
    else if (e.code == 'wrong-password')
    {
      print('Wrong password provided for that user.');
    }
  }
}