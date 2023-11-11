import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/review_list.dart';
import 'description_place.dart';
import 'review.dart'; 
import 'gradient_back.dart';
import 'card_image.dart';
import 'header_appbar.dart';
import 'home_trips.dart';
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
