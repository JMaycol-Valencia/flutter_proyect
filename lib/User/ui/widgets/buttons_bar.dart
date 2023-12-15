import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:my_app/User/bloc/bloc_user.dart';
import 'circle_button.dart';

class ButtonsBar extends StatelessWidget {
  late UserBloc userBloc;


  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 0.0,
            vertical: 10.0
        ),
        child: Row(
          children: <Widget>[
            //Cambiar Contraseña
            CircleButton(false, Icons.change_circle, 40.0, Color.fromRGBO(255, 255, 255, 1), () => {}),
            //Añadir un nuevo anime
            CircleButton(false, Icons.add, 20.0, Color.fromRGBO(255, 255, 255, 0.5),() => {}),
            //Cerrar sesion
            CircleButton(false, Icons.exit_to_app, 20.0, Color.fromRGBO(255, 255, 255, 1.0),() => userBloc.signOut()
            )
          ],
        )
    );
  }

}