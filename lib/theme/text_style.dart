import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/main_pages/settings_page/controller/settings_controller.dart';

// final settings = Get.find<SettingsController>();
// BuildContext get context => settings.appGlobalKey.currentContext!;

class TextStilles {
  BuildContext context;
  TextStilles(this.context);
  final co = Get.find<SettingsController>();

  TextStyle get s18W300 =>
      co.snackbarKey.currentState!.context.theme.textTheme.subtitle2!
          .copyWith(fontSize: 18, fontWeight: FontWeight.w300);
}
