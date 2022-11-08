import 'package:base_application/pages/main_pages/settings_page/controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
