import 'package:flutter/material.dart';
import 'description_place.dart';

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
        body: DescriptionPlace("Bahamas", 4, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. \n\nDonec auctor, nisl vitae tincidunt tincidunt, nunc nisl ultricies nunc, vitae ultricies nisl nisl vitae nisl. Donec auctor, nisl vitae tincidunt tincidunt, nunc nisl ultricies nunc, vitae ultricies nisl nisl vitae nisl."),
      ),
    );
  }
}