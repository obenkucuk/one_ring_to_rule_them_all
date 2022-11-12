import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData.light().copyWith(
    // NOT 240 dan yukarı yapma shimmer bozulur
    scaffoldBackgroundColor: Color.fromARGB(255, 200, 200, 200),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 15, color: Colors.black),
    ),
  );
}

ThemeData darkTheme() {
  return ThemeData.dark().copyWith(
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 15, color: Colors.white),
    ),
  );
}
