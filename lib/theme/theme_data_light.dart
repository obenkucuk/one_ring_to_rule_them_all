import 'package:base_application/core/extensions/widget_scale.dart';
import 'package:base_application/theme/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  selectedRowColor: AppColorsX.textDarkTheme,
  backgroundColor: AppColorsX.backgroundLight,
  scaffoldBackgroundColor: AppColorsX.backgroundLight,
  primaryIconTheme: const IconThemeData(color: Colors.white),
  iconTheme: const IconThemeData(color: Colors.black),
  cardColor: AppColorsX.cardLight,
  bottomAppBarColor: Colors.white,
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
    labelSmall: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: AppColorsX.textLightTheme,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColorsX.textLightTheme,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColorsX.textLightTheme,
    ),

    /// Body TextTheme
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColorsX.textLightTheme,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColorsX.textLightTheme,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColorsX.textLightTheme,
    ),

    /// Title TextTheme
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColorsX.textLightTheme,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColorsX.textLightTheme,
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: AppColorsX.textLightTheme,
    ),

    /// Headline TextTheme
    headlineSmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: AppColorsX.textLightTheme,
    ),
    headlineMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w400,
      color: AppColorsX.textLightTheme,
    ),
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w400,
      color: AppColorsX.textLightTheme,
    ),

    /// Display TextTheme
    displaySmall: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w400,
      color: AppColorsX.textLightTheme,
    ),
    displayMedium: TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.w400,
      color: AppColorsX.textLightTheme,
    ),
    displayLarge: TextStyle(
      fontSize: 57,
      fontWeight: FontWeight.w400,
      color: AppColorsX.textLightTheme,
    ),
  ),

  /// Button TextTheme
  buttonTheme: const ButtonThemeData(),

  /// ElevatedButton TextTheme
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
    fillColor: Colors.grey.shade400,
    contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
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
      borderRadius: BorderRadius.circular(10.0.w),
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
    color: Colors.transparent,
    elevation: 0,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(),
);
