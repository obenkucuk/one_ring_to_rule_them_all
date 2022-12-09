import 'package:base_application/core/exeptions/app_exeptions.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  final key = GlobalKey();

  final RxInt sayfadaGosterilenSayi = 0.obs;

  aaa() {
    // final box = key.currentContext!.findRenderObject() as RenderBox;
    // print(box.size.height);
  }

  aa() {
    sayfadaGosterilenSayi.value++;

    try {
      throw NoInternetException();
    } on NoInternetException catch (e) {
      debugPrint(e.toString());
    }
  }

  bb() {
    sayfadaGosterilenSayi.value--;
  }
}
