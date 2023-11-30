import 'package:flutter/material.dart';
import 'Anime/ui/screens/home_trips.dart';
import 'package:my_app/User/ui/screens/profile_trips.dart';
import 'Anime/ui/screens/search_trips.dart';

class AppTrips extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AppTrips();
  }
  
}

class _AppTrips extends State<AppTrips>{
  //VARIABLES NECESARIAS
  int indexTap = 0;
  //LISTA DE LOS WIDGETS
  final List<Widget> widgetsChildren = [
    HomesTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

//FUNCION QUE MANEJA LA LOGICA
  void onTapTapped(int index){
      //LA FUNCION SETSTATE NOS AYUDA A CAPTURAR EL ESTADO DE
      // NUESTRO WIDGET Y LE DEFINIMOS UNA FUNCION QUE CAMBIE EL INDEX DE NUESTRO MENU
      setState((){
        indexTap = index;
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //DEFINIMOS QUE NOS MUESTRE EN EL BODY LA LISTA DE WIDGETS
      //Y LA LISTA DEVOLERA SEGUN EL INDICE
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        //estilo del menu/bottonnavigationbar
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.tealAccent
        ),
        child: BottomNavigationBar(
          //DEFINIMOS QUE LA FUNCION ESTARA ANCLADA CON NUESTRO MENU
          onTap: onTapTapped,
          //EL INDICE SERA EL QUE TENGAMOS EN NUESTRA VARIABLE
          currentIndex: indexTap,
          //definimos los items de nuestro menu
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
               ),
               BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search"
               ),
               BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile"
               )
          ] ),
         ),
    ); 
  }
}