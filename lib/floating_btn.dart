import 'package:flutter/material.dart';

class FloatinBtn extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return _FloatinBtn();
  }

 
}
class _FloatinBtn extends State<FloatinBtn>{

  //FUNCION QUE SE EJECUTARA CUANDO PRESIONEMOS EL BOTON
  void onPressedFav(){
    ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Cargando ..."),
          )
        );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      mini: true,
      backgroundColor :Color(0xFF11DA53),
      tooltip : "Fav", //propiedad para ver el nombre dl boton flotante
      onPressed: onPressedFav,
      child: const Icon(
        Icons.favorite_border
      ),
    );
  }
  
}