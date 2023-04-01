import 'package:flutter/material.dart';


ThemeData basikTheme() => ThemeData(
  brightness: Brightness.light,
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      color: Colors.black,
      fontSize: 32,
    ),
    headlineMedium: TextStyle(
      color: Colors.black,
      fontSize: 25,
    ),
    headlineSmall: TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontSize: 20,
    ),


  ),
);

List <Color> MainTheme = <Color> [
  const Color(0xFF22223B),
  const Color(0xFF4A4E69),
  const Color(0xFF9A8C98),
  const Color(0xFFC9ADA7),
  const Color(0xFFF2E9E4),
];
void ThemeSetter(selectedColor)
{
  switch(selectedColor){
    case false:
      MainTheme=AppColorPastel;
      break;
    case true:
      MainTheme=AppColorYellow;
      break;
  }
}


List<Color> AppColorPastel = <Color> [
  const Color(0xFF22223B),
  const Color(0xFF4A4E69),
  const Color(0xFF9A8C98),
  const Color(0xFFC9ADA7),
  const Color(0xFFF2E9E4),
];
List<Color> AppColorYellow = <Color> [
  const Color(0xFF202020),
  const Color(0xFF333533),
  const Color(0xFFFFD100),
  const Color(0xFFFFEE32),
  const Color(0xFFD6D6D6),
];

