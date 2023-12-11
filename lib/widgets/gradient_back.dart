import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget{
  //VARIABLES
  String title = "Popular";
  double height = 0.0;
  
  //CONTRUCTOR
  GradientBack(this.title, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors:[                    //PARA LEER LOS COLORES DEBEMOS TOMAR EN CUENTA QUE VA DE
            Color(0xFF22092C ),     //TONO MAS CLARO AL
            Color(0xFF872341),    //TONO MAS OSCURO
        ],
        begin: FractionalOffset(0.2, 0.0),
        end: FractionalOffset(1.0, 0.6),
        stops: [0.0,0.6],
        tileMode: TileMode.clamp
        )
      ),
      alignment: Alignment(-0.9,-0.6),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}