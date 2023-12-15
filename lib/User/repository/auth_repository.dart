import 'FirebaseAuth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
   final _firebaseAutApi = FirebaseAuthAPI();

   //metodo signIn
   Future<UserCredential> singInFirebase() => _firebaseAutApi.signInWithGoogle();
   //metodo signOut
   signOut() => _firebaseAutApi.singOut();
}