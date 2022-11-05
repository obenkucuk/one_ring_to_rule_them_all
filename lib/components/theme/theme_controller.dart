import 'package:get/get.dart';

class ThemeController extends GetxController {
  RxBool isDark = false.obs;

  changeTheme() {
    // sistem tema modu
    // print(SchedulerBinding.instance.window.platformBrightness.name);
    isDark.value = !isDark.value;
  }
}
