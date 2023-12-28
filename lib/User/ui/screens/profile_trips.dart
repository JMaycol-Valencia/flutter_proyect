import 'dart:html';

import 'package:flutter/material.dart';
import 'package:my_app/User/ui/widgets/profile_background.dart';
import 'profile_header.dart';
import 'package:my_app/User/ui/widgets/profile_animes_list.dart';

class ProfileTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ProfileBackground(),
        ListView(
          children: <Widget>[
            ProfileHeader(),
            ProfileAnimesList()

          ],
        ),
      ],
    );
  }
}
