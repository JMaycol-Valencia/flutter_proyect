import 'package:flutter/material.dart';
import 'package:my_app/scroll_behavior.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget{
  
  //ESTA CONFIGURACION DE LISTA ES NECESARIA
  //PARA LOS DISPOSITIVOS QUE NO SEAN CELULARES Y EMULEN UNA PANTALLA DE CELULAR
	List<String> items = [
		'assets/img/one-piece.png',
		'assets/img/snk.png',
		'assets/img/dbz.png',
		'assets/img/naruto.png',
		'assets/img/hxh.png'
	];

  //ESTA CONFIGURACION ES PARA LAS DISPOSITIVOS QUE NO SEAN CELULARES
  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();
    return Container(
      height: 350.0,
      child: ScrollConfiguration(
        behavior: MyCustomScrollBehavior(),
        child: ListView.builder(
          padding: EdgeInsets.all(25.0),
          scrollDirection: Axis.horizontal,
          controller: controller,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return CardImage(items[index]);
          },
        ),
      ),
    );
  }
  
  //ESTA CONFIGURACION ES PARA LOS DISPOSITVOS 
  //QUE ESTAN EMULANDO A UN CELULAR
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   return Container(
  //     height: 350.0,
  //     child: ListView(
  //       padding: EdgeInsets.all(25.0),
  //       scrollDirection: Axis.horizontal,
  //       children: [
  //         CardImage("assets/img/one-piece.png"),
  //         CardImage("assets/img/snk.png"),
  //         CardImage("assets/img/hxh.png"),
  //         CardImage("assets/img/dbz.png"),
  //         CardImage("assets/img/naruto.png"),
  //       ],
  //     ),
  //   );
  // }
}