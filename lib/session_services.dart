import 'package:base_application/router/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'core/media_query_x.dart';
import 'core/shared_preferences_x.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SessionServices extends GetxController {
  final snackbarKey = GlobalKey<ScaffoldMessengerState>();

  // internet bağlantısını birden fazla kontrol etmemek için
  RxBool isNetworkChecking = false.obs;

  final RxBool isLogin = false.obs;
}

AppLocalizations? get appLocalization => AppLocalizations.of(navigatorKey.currentContext!);
