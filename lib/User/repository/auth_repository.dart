import 'FirebaseAuth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
   final _firebaseAutApi = FirebaseAuthAPI();

   Future<UserCredential> singInFirebase() => _firebaseAutApi.signInWithGoogle();
}