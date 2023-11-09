import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review("assets/img/nami.png","Nami","Navegante",4,"Amante del dinero"),
        Review("assets/img/zoro.png","Zoro","El mejor espadachin",5,"Le gusta el alcohol"),
        Review("assets/img/sanji.png","Sanji","El mejor cocinero",5,"Amante de las mujeres"),
        Review("assets/img/chopper.png","Chopper","Medico de la tripulacion",3,"No es un reno"),
        Review("assets/img/usopp.png","Usopp","Tirador de la tripulacion",5,"No , no es Sogeking"),
      ],
    );
  }
}