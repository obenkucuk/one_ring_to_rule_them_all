import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';

class BackgroundServices extends GetxController with StateMixin {
  final box = GetStorage();

  late Rx<ThemeMode> themeMode;

  /// Tema Modu Değiştirme
  void changeTheme(ThemeMode mode) {
    if (mode == ThemeMode.dark) {
      box.write("app_theme_mode", "dark");
      themeMode.value = ThemeMode.dark;
    } else if (mode == ThemeMode.light) {
      box.write("app_theme_mode", "light");
      themeMode.value = ThemeMode.light;
    } else {
      box.write("app_theme_mode", "system");
      themeMode.value = ThemeMode.system;
    }
  }

  @override
  void onInit() async {
    change(null, status: RxStatus.loading());
    await Future.delayed(const Duration(seconds: 1));

    //ilk açılış tema modu
    final storageThemeMode = box.read("app_theme_mode");
    if (storageThemeMode == null) {
      box.write("app_theme_mode", "system");
    } else {}

    // tema modu ne?
    themeMode = storageThemeMode == "system"
        ? ThemeMode.system.obs
        : (storageThemeMode == "dark"
            ? ThemeMode.dark.obs
            : ThemeMode.light.obs);
    change(null, status: RxStatus.success());

    super.onInit();
  }
}
