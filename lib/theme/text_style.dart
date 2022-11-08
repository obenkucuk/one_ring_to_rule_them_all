import 'package:flutter/material.dart';

// final settings = Get.find<SettingsController>();
// BuildContext get context => settings.appGlobalKey.currentContext!;

class TextStylesX {
  BuildContext context;
  TextStylesX(this.context);

  TextStyle get s18W300 => Theme.of(context).textTheme.headline1!.copyWith(fontSize: 18, fontWeight: FontWeight.w300);
}
