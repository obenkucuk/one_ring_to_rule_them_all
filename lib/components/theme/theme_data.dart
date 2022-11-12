import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData.light().copyWith(
    brightness: Brightness.light,

    // NOT 240 dan yukarı yapma shimmer bozulur
    scaffoldBackgroundColor: Color.fromARGB(255, 230, 230, 230),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 3, color: Colors.black),
    ),
  );
}

ThemeData darkTheme() {
  return ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 30, color: Colors.white),
    ),
  );
}
