import 'package:flutter/material.dart';
import 'package:my_app/User/model/user.dart';
import 'package:my_app/app_trips_ios.dart';
import 'package:my_app/app_trips.dart';
import 'package:my_app/widgets/button_green.dart';
import 'package:my_app/widgets/gradient_back.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:my_app/User/repository/auth_repository.dart';
import 'package:my_app/User/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen> {
  late UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    // en un futuro aca alojaremos nuestra logicca del screen
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    //StreamBuilder
  return StreamBuilder(
    stream: userBloc.authStatus,
    builder: (BuildContext context, AsyncSnapshot snapshot) {
      if (!snapshot.hasData || snapshot.hasError) {
        print("No hay datos en el snapshot o hay un error.");
        return sigInGoogleUI();
      } else {
        print("Hay datos en el snapshot. Usuario: ${snapshot.data.displayName}");
        return AppTrips();
      }
    },
  );
}

  Widget sigInGoogleUI() {
    //double.infinity nos ayuda a tener cubierta toda la pantalla como parametro
    var height = double.infinity;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack("", height),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Bienvenido\n De Nuevo",
                style: TextStyle(
                    fontSize: 37.0,
                    fontFamily: "Lato",
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              ButtonGreen(
                  text: "Login",
                  onPressed: () {
                    userBloc.signOut();
                    userBloc.signIn().then((UserCredential user) {
                      userBloc.updateUserData(MyUser(
                        uid: user.user!.uid,
                        name: user.user?.displayName ?? "",
                        email: user.user?.email ?? "",
                        photoURL: user.user?.photoURL ?? ""));
                    });
                  },
                  height: 50.0,
                  width: 300.0),
              GoogleAuthButton(
                  onPressed: () {
                    userBloc.signOut();
                    userBloc.signIn().then((UserCredential user) {
                      userBloc.updateUserData(MyUser(
                        uid: user.user!.uid,
                        name: user.user?.displayName ?? "",
                        email: user.user?.email ?? "",
                        photoURL: user.user?.photoURL ?? ""));
                    });
                  },
                  style: const AuthButtonStyle(
                      buttonType: AuthButtonType.secondary,
                      iconType: AuthIconType.outlined,
                      padding: EdgeInsets.all(18.0),
                      margin: EdgeInsets.all(10.0),
                      elevation: 10.0),
                  themeMode: ThemeMode.light),
              FacebookAuthButton(
                  onPressed: () {},
                  style: const AuthButtonStyle(
                      buttonType: AuthButtonType.secondary,
                      iconType: AuthIconType.outlined,
                      padding: EdgeInsets.all(18.0),
                      margin: EdgeInsets.all(10.0),
                      elevation: 10.0),
                  themeMode: ThemeMode.light)
            ],
          )
        ],
      ),
    );
  }
}


