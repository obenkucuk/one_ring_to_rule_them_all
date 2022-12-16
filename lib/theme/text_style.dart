// final settings = Get.find<SettingsController>();
// BuildContext get context => settings.appGlobalKey.currentContext!;

import 'package:base_application/screens/main_screen/settings_screen/controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextStylesX {
  final BuildContext context;

  TextStylesX(this.context);

  /// fontSize: 8
  TextStyle get s8W300 => Theme.of(context).textTheme.subtitle2!.copyWith(fontWeight: FontWeight.w300);
  TextStyle get s8W400 => Theme.of(context).textTheme.subtitle2!;
  TextStyle get s8W500 => Theme.of(context).textTheme.subtitle2!.copyWith(fontWeight: FontWeight.w500);
  TextStyle get s8W600 => Theme.of(context).textTheme.subtitle2!.copyWith(fontWeight: FontWeight.w600);
  TextStyle get s8W700 => Theme.of(context).textTheme.subtitle2!.copyWith(fontWeight: FontWeight.w700);

  /// fontSize: 10
  TextStyle get s10W300 => Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w300);
  TextStyle get s10W400 => Theme.of(context).textTheme.bodyText2!;
  TextStyle get s10W500 => Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w500);
  TextStyle get s10W600 => Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w600);
  TextStyle get s10W700 => Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w700);

  /// fontSize: 12
  TextStyle get s12W300 => Theme.of(context).textTheme.headline1!.copyWith(fontWeight: FontWeight.w300);
  TextStyle get s12W400 => Theme.of(context).textTheme.headline1!;
  TextStyle get s12W500 => Theme.of(context).textTheme.headline1!.copyWith(fontWeight: FontWeight.w500);
  TextStyle get s12W600 => Theme.of(context).textTheme.headline1!.copyWith(fontWeight: FontWeight.w600);
  TextStyle get s12W700 => Theme.of(context).textTheme.headline1!.copyWith(fontWeight: FontWeight.w700);

  /// fontSize: 14
  TextStyle get s14W300 => Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.w300);
  TextStyle get s14W400 => Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.w400);
  TextStyle get s14W500 => Theme.of(context).textTheme.subtitle1!;
  TextStyle get s14W600 => Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.w600);
  TextStyle get s14W700 => Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.w700);

  /// fontSize: 16
  TextStyle get s16W300 => Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w300);
  TextStyle get s16W400 => Theme.of(context).textTheme.bodyText1!;
  TextStyle get s16W500 => Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w500);
  TextStyle get s16W600 => Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w600);
  TextStyle get s16W700 => Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w700);

  /// fontSize: 18
  TextStyle get s18W300 => Theme.of(context).textTheme.headline3!.copyWith(fontWeight: FontWeight.w300);
  TextStyle get s18W400 => Theme.of(context).textTheme.headline3!;
  TextStyle get s18W500 => Theme.of(context).textTheme.headline3!.copyWith(fontWeight: FontWeight.w500);
  TextStyle get s18W600 => Theme.of(context).textTheme.headline3!.copyWith(fontWeight: FontWeight.w600);
  TextStyle get s18W700 => Theme.of(context).textTheme.headline3!.copyWith(fontWeight: FontWeight.w700);

  /// fontSize: 20
  TextStyle get s20W300 => Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.w300);
  TextStyle get s20W400 => Theme.of(context).textTheme.headline5!;
  TextStyle get s20W500 => Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.w500);
  TextStyle get s20W600 => Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.w600);
  TextStyle get s20W700 => Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.w700);

  /// fontSize: 24
  TextStyle get s24W300 => Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.w300);
  TextStyle get s24W400 => Theme.of(context).textTheme.headline6!;
  TextStyle get s24W500 => Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.w500);
  TextStyle get s24W600 => Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.w600);
  TextStyle get s24W700 => Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.w700);
}
