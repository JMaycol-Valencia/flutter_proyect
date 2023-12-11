import 'package:flutter/material.dart';
import 'package:my_app/widgets/button_green.dart';
import 'package:my_app/widgets/gradient_back.dart';
import 'package:my_app/widgets/button_green.dart';
import 'package:auth_buttons/auth_buttons.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    // en un futuro aca alojaremos nuestra logicca del screen
    return sigInGoogleUI();
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
              Text(
                "Bienvenido\n De Nuevo",
                style: TextStyle(
                    fontSize: 37.0,
                    fontFamily: "Lato",
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              ButtonGreen(
                  text: "Login", onPressed: () {}, height: 50.0, width: 300.0),
              GoogleAuthButton(onPressed: () {},themeMode: ThemeMode.light,),
              FacebookAuthButton(onPressed: () {})
            ],
          )
        ],
      ),
    );
  }
}
