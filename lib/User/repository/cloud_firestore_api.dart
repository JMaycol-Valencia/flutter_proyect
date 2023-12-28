import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_app/User/model/user.dart';

class CloudFireStoreAPI {
  final String USERS = "users";
  final String ANIMES = "animes";

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> updateUserData(MyUser user) async {
    // ignore: unnecessary_null_comparison
    if (user.uid != null) {
      // El usuario está autenticado, procede con la actualización de datos en Firestore
      DocumentReference ref = _firestore.collection(USERS).doc(user.uid);
      return ref.set({
        "uid": user.uid,
        "name": user.name,
        "email": user.email,
        "photoURL": user.photoURL,
        "myAnimes": user.myAnimes,
        "myTopAnimes": user.myTopAnimes,
        "lastSignIn": DateTime.now(),
      }, SetOptions(merge: true));
    } else {
      // El usuario no está autenticado correctamente, maneja la lógica de autenticación
      throw Exception("Usuario no autentificado, realize la utentificacion primero");
    }
  }
}
