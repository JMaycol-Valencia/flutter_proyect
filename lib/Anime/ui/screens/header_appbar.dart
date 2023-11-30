import 'package:flutter/material.dart';
import 'package:my_app/Anime/ui/widgets/card_image_list.dart';
import 'package:my_app/widgets/gradient_back.dart';
import 'package:my_app/Anime/ui/widgets/review_list.dart';

class HeaderAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        GradientBack("ANIWIKI"),
        CardImageList()
      ],
    );
  }
}