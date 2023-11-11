import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImg = "assets/img/luffy.png";
  String name = "Luffy";
  String details = "1 review 5 photos";
  double numStar =  5;
  String coment = "El pirata que se covertira en el rey dee los piratas";

  Review(this.pathImg, this.name, this.details, this.numStar, this.coment);

  @override
  Widget build(BuildContext context) {

    final userComent = Container(
       margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        coment, textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          fontWeight: FontWeight.w900
        )  ,
      ),
    );

    final userInfo = Container(
       margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        details, textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Color(0xFFa3a5a7)
        )  ,
      ),
    );


    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        name, textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0
        )  ,
      ),
    );

    final starUser = Container(
      margin: const EdgeInsets.only(
        left: 10.0
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: 15.0,
      ), 
    );

  //retroalimentacion de este pedazo de codigo
    final List<Widget> starWidgets = List.generate(
      numStar.round(),
      (index) => Container(
        margin: const EdgeInsets.only(left: 10.0),
        child: const Icon(
          Icons.star,
          color: Color(0xFFf2C611),
          size: 15.0,
        ),
      ),
    );


    final userDetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,  
      children: [
        userName,
        Row(
          children: [userInfo, ...starWidgets]
          ),
        userComent
      ],
    );



    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
       width: 80.0,
       height: 80.0,
       decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImg)
        )
       ),

    );


    return Row(
      children: [
        photo,
        userDetail
      ],
    );
  }

}