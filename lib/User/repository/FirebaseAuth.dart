import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthAPI{
  final _firebaseAuthApi = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // retorna el usuario
    return await _firebaseAuthApi.signInWithCredential(credential);
  }

  singOut() async{
    await _firebaseAuthApi.signOut().then((onValue) => print("Sesion Cerrada de Firebase"));
    googleSignIn.signOut();
    print("Sesiones cerradas");
  }

}