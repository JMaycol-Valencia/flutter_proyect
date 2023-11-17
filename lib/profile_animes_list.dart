import 'package:flutter/material.dart';
import 'profile_anime.dart';
import 'anime.dart';

class ProfileAnimesList extends StatelessWidget {

  Anime anime = new Anime('One Piece', 'Japan 🎌', 'Toei Animation', '1080');
  Anime anime2 = new Anime('Shingeki no Kioji', 'Japan 🎌', 'Wit Stuio - APA', '89');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0,
          bottom: 10.0
      ),
      child: Column(
        children: <Widget>[
          ProfileAnime('assets/img/one-piece.png', anime),
          ProfileAnime('assets/img/snk.png', anime2),
        ],
      ),
    );
  }

}