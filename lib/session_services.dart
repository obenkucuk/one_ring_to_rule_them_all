import 'dart:io';
import 'package:base_application/core/network_services/repository.dart';
import 'package:base_application/router/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'core/network_services/deneme_model.dart';
import 'main_screen.dart';

class SessionServices extends GetxController {
  // final snackbarKey = GlobalKey<ScaffoldMessengerState>();

  final RxBool isLogin = false.obs;
}

AppLocalizations? get appLocalization => AppLocalizations.of(navigatorKey.currentContext!);
