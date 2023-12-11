import 'package:flutter/material.dart';

class ButtonGreen extends StatefulWidget{
  final String text;
  double width = 0.0;
  double height = 0.0;
  VoidCallback onPressed;

  ButtonGreen({required this.text,required this.onPressed, required this.height, required this.width});

  @override
  State createState() {
    return _ButtonGreen();
  }

}

class _ButtonGreen extends State<ButtonGreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.only(
          top:30.0,
          left: 20.0,
          right: 20.0
        ),
        width:widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: const LinearGradient(
            colors: [
                Color.fromARGB(255, 232, 230, 232), //color que va arriba
                Color.fromARGB(255, 194, 193, 193)   //color que va abajo
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0,0.6],
            tileMode : TileMode.clamp
              )
        ),
        child: Center(
          child: Text(
            widget.text,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 18.0,
              color: Colors.black
            ),
          ),
        ),
      )
    );
  }
}