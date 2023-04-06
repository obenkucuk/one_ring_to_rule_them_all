import 'dart:io';
import 'package:base_application/core/network_services/repository.dart';
import 'package:base_application/router/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'main_screen.dart';

class SessionServices extends GetxController {
  // final snackbarKey = GlobalKey<ScaffoldMessengerState>();

  final RxBool isLogin = false.obs;

  Future<void> denemeIstek(BuildContext context) async {
    Map<String, dynamic> body = {
      'userName': 'batuhasrerran',
      'password': 'batubatu',
      'name': 'batuhan',
      'email': {'address': 'sssrrsarsd@gmail.com'},
    };

    var response = await Repository.instance.denemeIstek(body);
    if (response.status == HttpStatus.ok) {
      // DenemeModel model = response.data!;
    } else {
      await MainScreenInheritedWidget.of(context).showSnacbar(
        response.errorMessage ?? 'ananı s,keyim',
      );
    }
  }
}

AppLocalizations? get appLocalization => AppLocalizations.of(navigatorKey.currentContext!);
