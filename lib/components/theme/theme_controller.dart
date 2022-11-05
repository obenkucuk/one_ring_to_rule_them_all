import 'package:get/get.dart';

class ThemeController extends GetxController {
  RxBool isDark = false.obs;

  changeTheme() {
    isDark.value = !isDark.value;
    print(isDark);
  }
}
