import 'package:base_application/router/router.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class SplashController extends GetxController {
  final scaffoldKey = GlobalKey();
  BuildContext get context => scaffoldKey.currentContext!;

  @override
  void onReady() async {
    super.onReady();

    /// Üç saniye beklettikten sonra main page'a yönlendirir.
    await Future.delayed(
      const Duration(milliseconds: 700),
      () => context.goNamed(RoutesNames.main),
    );
  }
}
