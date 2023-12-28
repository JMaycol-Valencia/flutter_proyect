import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:my_app/User/model/user.dart';
import 'package:my_app/User/repository/auth_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:my_app/User/repository/cloud_firestore_repository.dart';

class UserBloc implements Bloc {
  final _auth_repository = AuthRepository();

  // Flujo de datos - Streams
  // Stream - firebase
  //StreamController
  Stream<firebase_auth.User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<firebase_auth.User?> get authStatus => streamFirebase;

  // // Constructor y funcion que nos ayudara a comprobar que firebase se inicialize
  // UserBloc() {
  //   // Inicializar Firebase en el constructor
  //   initializeFirebase();
  // }

  // Future<void> initializeFirebase() async {
  //   // Asegúrate de que Firebase se inicialice solo una vez
  //   if (Firebase.apps.isEmpty) {
  //     await Firebase.initializeApp();
  //   }
  // }

  // CASOS DE USO
  // 1.- Sing In a la aplicación google
  Future<UserCredential> signIn() {
    return _auth_repository.singInFirebase();
  }

  //CASO DE USO
  // 2.- Registra al usuario en la base de datos
  final _cloudFireStoreRepository = CloudFireStoreRepository();
  Future<void> updateUserData(MyUser user) => _cloudFireStoreRepository.updateUserDataFirestore(user);

  signOut(){
    _auth_repository.signOut();
  }

  @override
  void dispose() {}

  // FirebaseFirestore db = FirebaseFirestore.instance;

  // Future<List> getUser() async {
  //   List user = [];
  //   CollectionReference collectionReferenceUser = db.collection('users');
  //   QuerySnapshot queryUsers = await collectionReferenceUser.get();
  //   queryUsers.docs.forEach((documento) {
  //     user.add(documento.data());
  //    });
  //   return user;
  // }

}