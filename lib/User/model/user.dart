import 'package:flutter/material.dart';
import 'package:my_app/Anime/model/anime.dart';

class MyUser{
  final String uid;
  final String name;
  final String email;
  final String photoURL;
  final List<Anime>? myAnimes;
  final List<Anime>? myTopAnimes;

  MyUser({
    required this.uid,
    required this.name,
    required this.email,
    required this.photoURL,
    this.myAnimes,
    this.myTopAnimes,
    });

}