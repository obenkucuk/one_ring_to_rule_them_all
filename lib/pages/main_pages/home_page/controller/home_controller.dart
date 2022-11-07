import 'package:base_application/components/state_mixin/app_state_mixin.dart';
import 'package:get/state_manager.dart';

class HomeController extends GetxController with AppStateMixin {
  final RxInt sayfadaGosterilenSayi = 0.obs;

  aa() {
    changeStateStatus(StateStatus.loaded());

    sayfadaGosterilenSayi.value++;
  }

  bb() {
    changeStateStatus(StateStatus.loading());
    sayfadaGosterilenSayi.value--;
  }
}
