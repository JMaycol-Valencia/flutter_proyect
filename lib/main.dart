import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/Anime/ui/widgets/review_list.dart';
import 'Anime/ui/widgets/description_place.dart';
import 'package:my_app/Anime/ui/widgets/review.dart'; 
import 'package:my_app/widgets/gradient_back.dart';
import 'package:my_app/Anime/ui/widgets/card_image.dart';
import 'Anime/ui/screens/header_appbar.dart';
import 'Anime/ui/screens/home_trips.dart';
import 'app_trips.dart';

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
      home: AppTrips()
    );
  }
}
