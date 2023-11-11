import 'package:flutter/material.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  //VARIABLES QUE USAREMOS
  late String namePLace;
  late int stars;
  late String descriptionPlace;

  //CONSTRUCTOR QUE RECIBIRA LAS VARIABLES
  DescriptionPlace(this.namePLace, this.stars, this.descriptionPlace);

  

  @override
  Widget build(BuildContext context) {

    final star_border = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star_half = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: const EdgeInsets.only(
        top: 353.0,
        right: 3.0
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final description = Column(
      children: <Widget>[
        Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        right: 20.0,
        left: 20.0
      ),
      child:  Text(
        descriptionPlace, 
      style: const TextStyle(
        fontFamily: "Lato",
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: Color(0xFF56575a)
      ))
    )
      ],
    ); 


    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 350.0,
            left: 20.0,
            right: 20.0,
          ),
          child:  Text(
            namePLace,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          )
        ), star,star,star,star,star
      ],
    );

  //1 forma de ordenar los widgets
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleStars,
        description,
        ButtonPurple("Episodios")
      ],
    );
    //2 forma de conseguir un buen resultado
    // return Column(
    //   children: [
    //     Row( children: [
    //       titleStars,
    //       star,star,star,star,star
    //     ],),
    //     Column( children: [
    //       description
    //     ],)
    //   ],
    // );
  }
}