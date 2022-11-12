import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData.light().copyWith(
    brightness: Brightness.light,

    // NOT 240 dan yukarı yapma shimmer bozulur
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    ),
  );
}

ThemeData darkTheme() {
  return ThemeData.dark().copyWith(
    brightness: Brightness.dark,
  );
}
