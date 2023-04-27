import 'package:base_application/constants/size_constants.dart';
import 'package:base_application/theme/app_colors.dart';
import 'package:base_application/theme/theme_data_dark.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,

  scaffoldBackgroundColor: AppColorsX.backgroundLight,
  primaryIconTheme: const IconThemeData(color: Colors.white),
  iconTheme: const IconThemeData(color: Colors.black),
  cardColor: AppColorsX.cardLight,

  dividerColor: AppColorsX.dividerLight,
  shadowColor: Colors.black26,
  primaryColor: Colors.red,
  colorScheme: const ColorScheme(
    primary: AppColorsX.primary,
    onPrimary: AppColorsX.textLightTheme,
    primaryContainer: AppColorsX.primaryContainerLight,
    secondary: AppColorsX.secondary,
    onSecondary: Colors.white,
    secondaryContainer: AppColorsX.secondaryContainer,
    surface: Colors.white,
    onSurface: AppColorsX.textLightTheme,
    background: AppColorsX.backgroundLight,
    onBackground: AppColorsX.textLightTheme,
    error: AppColorsX.secondary,
    onError: Colors.white,
    brightness: Brightness.light,
  ),
  cardTheme: CardTheme(
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    color: AppColorsX.backgroundLight,
    margin: EdgeInsets.zero,
  ),

  /// where "light" is FontWeight.w300, "regular" is FontWeight.w400 and "medium" is FontWeight.w500.
  textTheme: const TextTheme(
    /// Label TextTheme
    labelSmall:
        TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: AppColorsX.textLightTheme, fontFamily: fontFamily),
    labelMedium:
        TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColorsX.textLightTheme, fontFamily: fontFamily),
    labelLarge:
        TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColorsX.textLightTheme, fontFamily: fontFamily),

    /// Body TextTheme
    bodySmall:
        TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColorsX.textLightTheme, fontFamily: fontFamily),
    bodyMedium:
        TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColorsX.textLightTheme, fontFamily: fontFamily),
    bodyLarge:
        TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColorsX.textLightTheme, fontFamily: fontFamily),

    /// Title TextTheme
    titleSmall:
        TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColorsX.textLightTheme, fontFamily: fontFamily),
    titleMedium:
        TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppColorsX.textLightTheme, fontFamily: fontFamily),
    titleLarge:
        TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: AppColorsX.textLightTheme, fontFamily: fontFamily),

    /// Headline TextTheme
    headlineSmall:
        TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: AppColorsX.textLightTheme, fontFamily: fontFamily),
    headlineMedium:
        TextStyle(fontSize: 28, fontWeight: FontWeight.w400, color: AppColorsX.textLightTheme, fontFamily: fontFamily),
    headlineLarge:
        TextStyle(fontSize: 32, fontWeight: FontWeight.w400, color: AppColorsX.textLightTheme, fontFamily: fontFamily),

    /// Display TextTheme
    displaySmall:
        TextStyle(fontSize: 36, fontWeight: FontWeight.w400, color: AppColorsX.textLightTheme, fontFamily: fontFamily),
    displayMedium:
        TextStyle(fontSize: 45, fontWeight: FontWeight.w400, color: AppColorsX.textLightTheme, fontFamily: fontFamily),
    displayLarge:
        TextStyle(fontSize: 57, fontWeight: FontWeight.w400, color: AppColorsX.textLightTheme, fontFamily: fontFamily),
  ),

  /// Button TextTheme
  buttonTheme: const ButtonThemeData(),

  /// Button

  /// ElevatedButton TextTheme
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      backgroundColor: MaterialStateProperty.all<Color>(AppColorsX.blue),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          color: Colors.yellow,
          fontWeight: FontWeight.w600,
          fontSize: 10,
        ),
      ),
      padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(horizontal: padding10)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: Colors.grey.shade400,
    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
    filled: true,
    labelStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColorsX.textLightTheme,
    ),
    hintStyle: const TextStyle(
      fontWeight: FontWeight.w400,
      color: Colors.white,
      fontSize: 14,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    ),
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: AppColorsX.primary,
    selectionColor: AppColorsX.primaryContainerDark,
    selectionHandleColor: AppColorsX.primary,
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
          color: AppColorsX.textLightTheme,
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
  radioTheme: RadioThemeData(
    fillColor: MaterialStateProperty.all<Color>(AppColorsX.primary),
  ),
  dividerTheme: const DividerThemeData(
    color: AppColorsX.dividerLight,
    thickness: 1,
    space: 0,
  ),
  appBarTheme: const AppBarTheme(
    titleSpacing: 0,
    elevation: 0,
    color: AppColorsX.backgroundLight,
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColorsX.darkBoldText,
    ),
    centerTitle: true,
    actionsIconTheme: IconThemeData(color: AppColorsX.textLightTheme),
    iconTheme: IconThemeData(color: AppColorsX.textLightTheme),
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: AppColorsX.textLightTheme,
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
  indicatorColor: AppColorsX.indicatorLightColor,
  bottomAppBarTheme: const BottomAppBarTheme(
    color: Colors.white,
    elevation: 0,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(),
);
