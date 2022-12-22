import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsController extends GetxController {
  final GlobalKey scaffoldKey = GlobalKey();

  BuildContext get context => scaffoldKey.currentContext!;

  void sayLocale() => debugPrint(AppLocalizations.of(context)!.localeName);
}
