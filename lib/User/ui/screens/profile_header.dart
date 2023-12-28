//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:my_app/User/bloc/bloc_user.dart';
import 'package:my_app/User/model/user.dart';
import 'package:my_app/User/ui/widgets/user_info.dart';
import 'package:my_app/User/ui/widgets/buttons_bar.dart';
import 'package:my_app/User/model/user.dart';

class ProfileHeader extends StatelessWidget {
  late UserBloc userBloc;
  late MyUser user;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);

    return StreamBuilder(
      stream: userBloc.streamFirebase,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
      switch(snapshot.connectionState){
        case ConnectionState.waiting:
          return CircularProgressIndicator();
        case ConnectionState.none:
          return CircularProgressIndicator();
        case ConnectionState.active:
          return showProfileData(snapshot);
        case ConnectionState.done:
          return showProfileData(snapshot);
      }
    }
    );
  }

  Widget showProfileData(AsyncSnapshot snapshot){
    if(!snapshot.hasData || snapshot.hasError){
      print("No inicio Sesion");
      return Container(
      margin: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 50.0
      ),
      child: const Column(
        children: <Widget>[
          CircularProgressIndicator(),
          Text("No se pudo cargar la informacion, reintente de nuevo")
        ],
      ),
    );
    }else{
      print("Se inicio sesion");
      print(snapshot.data);
      user = MyUser(uid: snapshot.data.uid, name: snapshot.data.displayName, email: snapshot.data.email, photoURL: snapshot.data.photoURL);
      const title = Text(
      'Profile',
      style: TextStyle(
          fontFamily: 'Lato',
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0
      ),
    );

    return Container(
      margin: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 50.0
      ),
      child: Column(
        children: <Widget>[
          const Row(
            children: <Widget>[
              title
            ],
          ),
          UserInfo(user),
          ButtonsBar()
        ],
      ),
    );
    }
  }

}