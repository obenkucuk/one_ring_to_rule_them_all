import 'package:base_application/components/state_mixin/app_state_mixin.dart';
import 'package:base_application/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:auto_route/auto_route.dart';

class SplashController extends GetxController with AppStateMixin {
  final scaffoldKey = GlobalKey();
  BuildContext get context => scaffoldKey.currentContext!;

  @override
  void onReady() async {
    super.onReady();

    /// Üç saniye beklettikten sonra main page'a yönlendirir.
    await Future.delayed(const Duration(seconds: 3)).then(
      (value) => context.replaceRoute(
        const MainRoute(),
      ),
    );
  }
}
