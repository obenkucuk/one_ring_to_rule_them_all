import 'package:base_application/theme/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  selectedRowColor: AppColorsX.textDarkTheme,
  backgroundColor: AppColorsX.backgroundDark,
  scaffoldBackgroundColor: AppColorsX.backgroundDark,
  primaryIconTheme: const IconThemeData(color: Colors.white),
  iconTheme: const IconThemeData(color: Colors.black),
  cardColor: AppColorsX.primaryContainerDark,
  bottomAppBarColor: Colors.white,
  dividerColor: AppColorsX.dividerDark,
  shadowColor: Colors.black26,
  primaryColor: Colors.greenAccent,
  colorScheme: const ColorScheme(
    primary: AppColorsX.primary,
    onPrimary: AppColorsX.textDarkTheme,
    primaryContainer: AppColorsX.primaryContainerDark,
    secondary: AppColorsX.secondary,
    onSecondary: Colors.white,
    secondaryContainer: AppColorsX.secondaryContainer,
    surface: Colors.white,
    onSurface: AppColorsX.textDarkTheme,
    background: AppColorsX.backgroundDark,
    onBackground: AppColorsX.textDarkTheme,
    error: AppColorsX.secondary,
    onError: Colors.white,
    brightness: Brightness.dark,
  ),
  cardTheme: CardTheme(
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    color: AppColorsX.backgroundDark,
    margin: EdgeInsets.zero,
  ),
  textTheme: const TextTheme(
    /// Label TextTheme
    labelSmall: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: AppColorsX.textDarkTheme,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColorsX.textDarkTheme,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColorsX.textDarkTheme,
    ),

    /// Body TextTheme
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColorsX.textDarkTheme,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColorsX.textDarkTheme,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColorsX.textDarkTheme,
    ),

    /// Title TextTheme
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColorsX.textDarkTheme,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColorsX.textDarkTheme,
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: AppColorsX.textDarkTheme,
    ),

    /// Headline TextTheme
    headlineSmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: AppColorsX.textDarkTheme,
    ),
    headlineMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w400,
      color: AppColorsX.textDarkTheme,
    ),
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w400,
      color: AppColorsX.textDarkTheme,
    ),

    /// Display TextTheme
    displaySmall: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w400,
      color: AppColorsX.textDarkTheme,
    ),
    displayMedium: TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.w400,
      color: AppColorsX.textDarkTheme,
    ),
    displayLarge: TextStyle(
      fontSize: 57,
      fontWeight: FontWeight.w400,
      color: AppColorsX.textDarkTheme,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      backgroundColor: MaterialStateProperty.all<Color>(AppColorsX.green),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: AppColorsX.inputDecorationDark,
    filled: true,
    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
    labelStyle: const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: AppColorsX.textDarkTheme,
    ),
    hintStyle: const TextStyle(
      fontWeight: FontWeight.w400,
      color: AppColorsX.paleTextDarkTheme,
      fontSize: 15,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    ),
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: AppColorsX.primary,
    selectionColor: AppColorsX.primaryContainerLight,
    selectionHandleColor: AppColorsX.primaryContainerLight.withOpacity(0.2),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      foregroundColor: MaterialStateProperty.all<Color>(AppColorsX.primary),
      shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
      overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          color: AppColorsX.primary,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      side: MaterialStateProperty.all<BorderSide>(const BorderSide(color: AppColorsX.primary)),
      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          color: AppColorsX.textDarkTheme,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: MaterialStateProperty.all<Color?>(AppColorsX.primary),
    checkColor: MaterialStateProperty.all<Color?>(Colors.white),
    side: const BorderSide(width: 0.7, color: AppColorsX.primary),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  radioTheme: RadioThemeData(fillColor: MaterialStateProperty.all<Color>(AppColorsX.primary)),
  dividerTheme: const DividerThemeData(color: AppColorsX.dividerDark, thickness: 1, space: 0),
  appBarTheme: const AppBarTheme(
    titleSpacing: 0,
    elevation: 0,
    color: AppColorsX.backgroundDark,
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    centerTitle: true,
    actionsIconTheme: IconThemeData(color: Colors.white),
    iconTheme: IconThemeData(color: Colors.white),
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: AppColorsX.textDarkTheme,
    labelStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: AppColorsX.primary,
    ),
    unselectedLabelColor: AppColorsX.unSelectedColor,
    unselectedLabelStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: AppColorsX.unSelectedColor,
    ),
  ),
  indicatorColor: AppColorsX.indicatorDarkColor,
  bottomAppBarTheme: const BottomAppBarTheme(color: Colors.transparent, elevation: 0),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(),
);
