import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_app/User/model/user.dart';
import 'package:my_app/User/repository/cloud_firestore_api.dart';

class CloudFireStoreRepository {

  final _cloudFireStoreAPI = CloudFireStoreAPI();
  Future<void> updateUserDataFirestore(MyUser user) => _cloudFireStoreAPI.updateUserData(user);

}