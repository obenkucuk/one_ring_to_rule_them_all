import 'dart:ui';

import 'package:base_application/theme/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  brightness: Brightness.light,
  useMaterial3: true,
  selectedRowColor: AppColors.textDarkTheme,
  backgroundColor: AppColors.backgroundLight,
  scaffoldBackgroundColor: AppColors.backgroundLight,
  primaryIconTheme: const IconThemeData(color: Colors.white),
  iconTheme: const IconThemeData(color: Colors.black),
  cardColor: AppColors.cardLight,
  bottomAppBarColor: Colors.white,
  dividerColor: AppColors.dividerLight,
  shadowColor: Colors.black26,
  primaryColor: Colors.amberAccent,
  colorScheme: const ColorScheme(
    primary: AppColors.primary,
    onPrimary: AppColors.textLightTheme,
    primaryContainer: AppColors.primaryContainerLight,
    secondary: AppColors.secondary,
    onSecondary: Colors.white,
    secondaryContainer: AppColors.secondaryContainer,
    surface: Colors.white,
    onSurface: AppColors.textLightTheme,
    background: AppColors.backgroundLight,
    onBackground: AppColors.textLightTheme,
    error: AppColors.secondary,
    onError: Colors.white,
    brightness: Brightness.light,
  ),
  cardTheme: CardTheme(
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    color: AppColors.backgroundLight,
    margin: EdgeInsets.zero,
  ),
  textTheme: const TextTheme(
    ///HeadLine
    headline1: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.textLightTheme,
      fontFeatures: [FontFeature.tabularFigures()],
    ),
    headline2: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: AppColors.textLightTheme,
      fontFeatures: [FontFeature.tabularFigures()],
    ),
    headline3: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: AppColors.textLightTheme,
      fontFeatures: [FontFeature.tabularFigures()],
    ),
    headline4: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: AppColors.textLightTheme,
      fontFeatures: [FontFeature.tabularFigures()],
    ),
    headline5: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: AppColors.textLightTheme,
      fontFeatures: [FontFeature.tabularFigures()],
    ),
    headline6: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: AppColors.textLightTheme,
      fontFeatures: [FontFeature.tabularFigures()],
    ),

    ///BodyText

    bodyText1: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.textLightTheme,
      fontFeatures: [FontFeature.tabularFigures()],
    ),
    bodyText2: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: AppColors.textLightTheme,
      fontFeatures: [FontFeature.tabularFigures()],
    ),
    subtitle1: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.textLightTheme,
      fontFeatures: [FontFeature.tabularFigures()],
    ),
    subtitle2: TextStyle(
      fontSize: 8,
      fontWeight: FontWeight.w400,
      color: AppColors.textLightTheme,
      fontFeatures: [FontFeature.tabularFigures()],
    ),
    caption: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      color: AppColors.textLightTheme,
      fontFeatures: [FontFeature.tabularFigures()],
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      backgroundColor: MaterialStateProperty.all<Color>(AppColors.green),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
      padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.only()),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: AppColors.inputDecorationLight,
    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
    filled: true,
    labelStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.textLightTheme,
      fontFeatures: [FontFeature.tabularFigures()],
    ),
    hintStyle: const TextStyle(
      fontWeight: FontWeight.w400,
      color: AppColors.paleTextLightTheme,
      fontSize: 14,
    ),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide.none),
    /*  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 0.5, color: ColorPalette.paleTextLightTheme),
      borderRadius: BorderRadius.circular(
        radiusS,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 0.5, color: ColorPalette.paleTextLightTheme),
      borderRadius: BorderRadius.circular(
        radiusS,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 0.5, color: ColorPalette.paleTextLightTheme),
      borderRadius: BorderRadius.circular(
        radiusS,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 0.5, color: ColorPalette.secondary),
      borderRadius: BorderRadius.circular(
        radiusS,
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 0.5, color: ColorPalette.paleTextLightTheme),
      borderRadius: BorderRadius.circular(
        radiusS,
      ),
    ), */
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: AppColors.primary,
    selectionColor: AppColors.primaryContainerDark,
    selectionHandleColor: AppColors.primary,
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      foregroundColor: MaterialStateProperty.all<Color>(AppColors.primary),
      shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
      overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          color: AppColors.primary,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      side: MaterialStateProperty.all<BorderSide>(const BorderSide(color: AppColors.primary)),
      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          color: AppColors.textLightTheme,
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
    fillColor: MaterialStateProperty.all<Color?>(AppColors.primary),
    checkColor: MaterialStateProperty.all<Color?>(Colors.white),
    side: const BorderSide(width: 0.7, color: AppColors.primary),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  radioTheme: RadioThemeData(
    fillColor: MaterialStateProperty.all<Color>(AppColors.primary),
  ),
  dividerTheme: const DividerThemeData(
    color: AppColors.dividerLight,
    thickness: 1,
    space: 0,
  ),
  appBarTheme: const AppBarTheme(
    titleSpacing: 0,
    elevation: 0.0,
    color: AppColors.backgroundLight,
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.darkBoldText,
      fontFeatures: [FontFeature.tabularFigures()],
    ),
    centerTitle: true,
    actionsIconTheme: IconThemeData(color: AppColors.textLightTheme),
    iconTheme: IconThemeData(color: AppColors.textLightTheme),
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: AppColors.textLightTheme,
    labelStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: AppColors.primary,
    ),
    unselectedLabelColor: AppColors.unSelectedColor,
    unselectedLabelStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: AppColors.unSelectedColor,
    ),
  ),
  indicatorColor: AppColors.indicatorLightColor,
  bottomAppBarTheme: const BottomAppBarTheme(
    color: Colors.transparent,
    elevation: 0,
  ),
);
