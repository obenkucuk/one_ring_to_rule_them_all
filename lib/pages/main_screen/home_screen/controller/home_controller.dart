import 'package:base_application/core/exeptions/app_exeptions.dart';
import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  final RxInt sayfadaGosterilenSayi = 0.obs;

  aa() {
    sayfadaGosterilenSayi.value++;

    try {
      throw NoInternetException();
    } on NoInternetException catch (e) {}
  }

  bb() {
    sayfadaGosterilenSayi.value--;
  }
}
