import 'package:flutter/material.dart';
import 'anime.dart';
import 'floating_btn.dart';

class ProfileAnineInfo extends StatelessWidget {

  Anime anime;

  ProfileAnineInfo(this.anime);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final anime = Text(
      this.anime.name,
      style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 20.0,
          fontWeight: FontWeight.bold
      ),
    );

    final animeInfo = Padding(
        padding: EdgeInsets.symmetric(
            vertical: 10.0
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                this.anime.from,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                    fontFamily: 'Lato',
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                this.anime.studio,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                    fontFamily: 'Lato',
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold
                ),
              )
            ]
        )
    );

    final caps = Text(
      'Caps ${this.anime.caps}',
      style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          color: Colors.amber
      ),
    );

    final card = Container(
      width: screenWidth * 0.65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 10.0,
                offset: Offset(0.0, 5.0)
            )
          ]
      ),
      child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              anime,
              animeInfo,
              caps
            ],
          )
      ),
    );

    return Stack(
      alignment: Alignment(0.8, 1.25),
      children: <Widget>[
        card,
        FloatinBtn()
      ],
    );
  }

}