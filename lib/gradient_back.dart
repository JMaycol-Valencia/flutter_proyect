import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  

    return Container(
      height: 250.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors:[                    //PARA LEER LOS COLORES DEBEMOS TOMAR EN CUENTA QUE VA DE
            Color(0xFF4268D3),     //TONO MAS CLARO AL
            Color(0xFF584CD1),    //TONO MAS OSCURO
        ],
        begin: FractionalOffset(0.2, 0.0),
        end: FractionalOffset(1.0, 0.6),
        stops: [0.0,0.6],
        tileMode: TileMode.clamp
        )
      )
    );
  }
}