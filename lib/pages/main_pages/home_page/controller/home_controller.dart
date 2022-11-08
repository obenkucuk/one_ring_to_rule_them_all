import 'package:base_application/components/exeptions/app_exeptions.dart';
import 'package:base_application/components/state_mixin/app_state_mixin.dart';
import 'package:get/state_manager.dart';

class HomeController extends GetxController with AppStateMixin {
  final RxInt sayfadaGosterilenSayi = 0.obs;

  aa() {
    changeStateStatus(StateStatus.loaded());
    sayfadaGosterilenSayi.value++;

    try {
      throw NoInternetExeption();
    } on NoInternetExeption catch (e) {}
  }

  bb() {
    changeStateStatus(StateStatus.loading());
    sayfadaGosterilenSayi.value--;
  }
}
