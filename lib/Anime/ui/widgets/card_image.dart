import 'package:flutter/material.dart';
import 'package:my_app/widgets/floating_btn.dart';
import 'package:my_app/widgets/button_purple.dart';

class CardImage extends StatelessWidget{
String pathImage = "assets/img/one-piece.png";
CardImage(this.pathImage);  
@override
Widget build(BuildContext context) {

    final cart = Container(
      width: 250.0,
      height: 350.0,
      margin: const EdgeInsets.only(
        top: 80.0,
        left: 20.0
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black,
            blurRadius: 15.0,
            offset: Offset(0.0, 0.7)
          )
        ]
      ),
    );


    return Stack(
      alignment: Alignment(0.9,1.1),
      children: [
        cart,
        FloatinBtn()
      ],
    );
  }
}