import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SettingsController extends GetxController {
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
    super.onInit();
    //ilk açılış tema modu
    final storageThemeMode = box.read("app_theme_mode");
    if (storageThemeMode == null) {
      box.write("app_theme_mode", "system");
    } else {}

    // tema modu ne?
    themeMode = storageThemeMode == "system"
        ? ThemeMode.system.obs
        : (storageThemeMode == "dark" ? ThemeMode.dark.obs : ThemeMode.light.obs);
  }
}
