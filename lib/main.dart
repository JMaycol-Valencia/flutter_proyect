import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:my_app/Anime/ui/widgets/review_list.dart';
import 'package:my_app/User/bloc/bloc_user.dart';
import 'Anime/ui/widgets/description_place.dart';
import 'package:my_app/Anime/ui/widgets/review.dart'; 
import 'package:my_app/widgets/gradient_back.dart';
import 'package:my_app/Anime/ui/widgets/card_image.dart';
import 'Anime/ui/screens/header_appbar.dart';
import 'Anime/ui/screens/home_trips.dart';
import 'app_trips.dart';
import 'package:my_app/Anime/bloc/bloc_anime.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
    return BlocProvider(
      bloc: UserBloc(),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,    //PROPIEDAD PARA QUITAR EL BANNER DE DEBUG DE NUESTRA APLICACION
      title: 'AniWiki',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: AppTrips()
    ));
  }
}
