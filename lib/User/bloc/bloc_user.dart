import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserBloc implements Bloc{
  @override
  void dispose() {
    
  }
  FirebaseFirestore db = FirebaseFirestore.instance;

  Future<List> getUser() async {
    List user = [];
    CollectionReference collectionReferenceUser = db.collection('users');
    QuerySnapshot queryUsers = await collectionReferenceUser.get();
    queryUsers.docs.forEach((documento) {
      user.add(documento.data());
     });
    return user;
  }

}