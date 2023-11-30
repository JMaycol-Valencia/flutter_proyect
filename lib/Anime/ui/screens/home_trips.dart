import 'package:flutter/material.dart';
import '../widgets/description_place.dart';
import 'package:my_app/Anime/ui/widgets/review_list.dart';
import 'header_appbar.dart';

class HomesTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Stack(
          children: [
            ListView(
              children: <Widget> [
                DescriptionPlace("One Piece", 5, "One Piece es un manga y anime creado por Eiichiro Oda. La historia sigue las aventuras de Monkey D. Luffy, un joven pirata con el objetivo de encontrar el tesoro supremo conocido como el One Piece y convertirse en el Rey de los Piratas.\n\nLuffy adquiere la habilidad de estirar su cuerpo como si fuera goma después de comer una fruta del diablo, pero también se embarca en una travesía llena de personajes coloridos, islas exóticas y enemigos poderosos.\n\nA lo largo de su viaje, forma una tripulación diversa y leal, explorando el Grand Line mientras enfrenta desafíos, descubre secretos y se enfrenta a la organización mundial conocida como la Marina.\n\nOne Piece es conocido por su narrativa épica, emocionante acción y temas de amistad y aventura."),
                ReviewList() // Aquí añadí el widget Review con la ruta de la imagen
              ],
            ),
            HeaderAppBar()
          ],
        );
  }
}