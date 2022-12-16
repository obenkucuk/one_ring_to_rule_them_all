import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final scaffoldKey = GlobalKey();
  BuildContext get context => scaffoldKey.currentContext!;

  @override
  void onReady() async {
    super.onReady();

    /// Üç saniye beklettikten sonra main page'a yönlendirir.
    await Future.delayed(const Duration(milliseconds: 700)).then((value) {});
  }
}
