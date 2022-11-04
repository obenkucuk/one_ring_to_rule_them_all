import 'package:base_application/theme/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme(bool modeIsDark) => ThemeData(
      brightness: modeIsDark ? Brightness.dark : Brightness.light,
      primaryColor: modeIsDark ? Colors.amber : Colors.red,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.redAccent),
      cardColor: modeIsDark ? Colors.yellowAccent : AppColors.primaryColor,
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 96,
          fontWeight: FontWeight.w400,
          color: Colors.amber,
        ),
        subtitle2: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.blue,
        ),
      ),
    );
