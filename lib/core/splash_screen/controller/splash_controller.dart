import 'package:base_application/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:auto_route/auto_route.dart';

import '../../app_size.dart';

class SplashController extends GetxController {
  final scaffoldKey = GlobalKey();
  BuildContext get context => scaffoldKey.currentContext!;

  @override
  void onReady() async {
    super.onReady();
    SizeX.setScreenSize(context);

    /// Üç saniye beklettikten sonra main page'a yönlendirir.
    await Future.delayed(const Duration(milliseconds: 700)).then(
      (value) => context.replaceRoute(const LoginRouter()),
    );
  }
}
