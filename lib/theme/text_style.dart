import 'package:flutter/material.dart';

// final settings = Get.find<SettingsController>();
// BuildContext get context => settings.appGlobalKey.currentContext!;

class TextStilles {
  BuildContext context;
  TextStilles(this.context);

  TextStyle get s18W300 => Theme.of(context)
      .textTheme
      .subtitle2!
      .copyWith(fontSize: 18, fontWeight: FontWeight.w300);
}
