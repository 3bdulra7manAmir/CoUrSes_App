// ignore_for_file: unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';

var auth = FirebaseAuth.instance;

Future<void> firebaseRegisterAuth(String uEmail, String uPassword) async
{
  try
  {
    UserCredential uCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: uEmail, password: uPassword);
  }
  on FirebaseAuthException catch (e)
  {
    if (e.code == 'weak-password')
    {
      print('The Password Provided is Too Weak.');
    }
    else if (e.code == 'email-already-in-use')
    {
      print('The Account Already Exists For That Email.');
    }
  }
  catch (e)
  {
    print(e);
  }
}

