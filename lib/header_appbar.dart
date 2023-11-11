import 'package:flutter/material.dart';
import 'package:my_app/card_image_list.dart';
import 'gradient_back.dart';
import 'review_list.dart';

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