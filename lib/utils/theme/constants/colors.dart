import 'package:flutter/material.dart';
class NColors{
  NColors._();

  //basic app colours
  static const Color primary = Color(0xFF4b68FF);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);
  static const Color white = Colors.white;
  static const Color black = Colors.black;


  //text colours
  static const Color textprimary = Color(0xFF333333);
  static const Color textsecondary = Color(0xFF6C757D);
  static const Color textwhite = Colors.white;

  //background colours
  static const Color light =Color(0xFFF6F6F6);
  static const Color dark = Color.fromARGB(255, 18, 19, 19);
  static const Color primarybackgroundcolor = Color(0xFFF3F5FF);
  static const Color lightContainer = Color(0xFFF6F6F6);
  static const Color softgrey = Color(0xFFF4F4F4);

  //Divider colors
  static const Color darkgrey = Color.fromARGB(255, 98, 96, 96);
  static const Color grey = Color.fromARGB(255, 144, 150, 152);

//Border colors
  static const Color borderPrimary=Color.fromARGB(255, 85, 83, 83);


  //Gradient Colors
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xfffad0c4),
    ],
  );
}