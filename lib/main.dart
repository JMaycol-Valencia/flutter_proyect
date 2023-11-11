import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/review_list.dart';
import 'description_place.dart';
import 'review.dart'; 
import 'gradient_back.dart';
import 'card_image.dart';
import 'header_appbar.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,    //PROPIEDAD PARA QUITAR EL BANNER DE DEBUG DE NUESTRA APLICACION
      title: 'Hola mundo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Practica'),
        // ),
        //PARA TENER UN SCROLLVIEW,ENVOLVEMOS NUESTRO WIDGET COLUMN CON EL DE SingleChildScrollView
        body: 
        // SingleChildScrollView(    
        //   child: Column(  // Cambié Row por Column para poder agregar múltiples widgets
        //   children: [
        //     DescriptionPlace("One Piece", 5, "One Piece es un manga y anime creado por Eiichiro Oda. La historia sigue las aventuras de Monkey D. Luffy, un joven pirata con el objetivo de encontrar el tesoro supremo conocido como el One Piece y convertirse en el Rey de los Piratas.\n\nLuffy adquiere la habilidad de estirar su cuerpo como si fuera goma después de comer una fruta del diablo, pero también se embarca en una travesía llena de personajes coloridos, islas exóticas y enemigos poderosos.\n\nA lo largo de su viaje, forma una tripulación diversa y leal, explorando el Grand Line mientras enfrenta desafíos, descubre secretos y se enfrenta a la organización mundial conocida como la Marina.\n\nOne Piece es conocido por su narrativa épica, emocionante acción y temas de amistad y aventura."),
        //     Review("assets/img/one_piece.png","Luffy","rey de los piratas",5,"amante de la carne"), 
        //     ReviewList() // Aquí añadí el widget Review con la ruta de la imagen
        //   ],
        // ),
        // ) 
        //EL WIDGET STACK NOS AYUDA A TENER UN EFECTO DE TENER UN WEIGET EN LA PARTE DE ATRAS
        Stack(
          children: [
            ListView(
              children: <Widget> [
                DescriptionPlace("One Piece", 5, "One Piece es un manga y anime creado por Eiichiro Oda. La historia sigue las aventuras de Monkey D. Luffy, un joven pirata con el objetivo de encontrar el tesoro supremo conocido como el One Piece y convertirse en el Rey de los Piratas.\n\nLuffy adquiere la habilidad de estirar su cuerpo como si fuera goma después de comer una fruta del diablo, pero también se embarca en una travesía llena de personajes coloridos, islas exóticas y enemigos poderosos.\n\nA lo largo de su viaje, forma una tripulación diversa y leal, explorando el Grand Line mientras enfrenta desafíos, descubre secretos y se enfrenta a la organización mundial conocida como la Marina.\n\nOne Piece es conocido por su narrativa épica, emocionante acción y temas de amistad y aventura."),
                Review("assets/img/luffy.png","Luffy","rey de los piratas",5,"amante de la carne"), 
                ReviewList() // Aquí añadí el widget Review con la ruta de la imagen
              ],
            ),
            HeaderAppBar()
          ],
        )
      ),
    );
  }
}
