import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review.dart';  // Asegúrate de importar el archivo correcto

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hola mundo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Practica'),
        ),
        body: Column(  // Cambié Row por Column para poder agregar múltiples widgets
          children: [
            DescriptionPlace("Monkey D Luffy", 5, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. \n\nDonec auctor, nisl vitae tincidunt tincidunt, nunc nisl ultricies nunc, vitae ultricies nisl nisl vitae nisl. Donec auctor, nisl vitae tincidunt tincidunt, nunc nisl ultricies nunc, vitae ultricies nisl nisl vitae nisl."),
            Review("assets/img/one_piece.png","luffy","rey de los piratas","amante de la carne"),  // Aquí añadí el widget Review con la ruta de la imagen
          ],
        ),
      ),
    );
  }
}
