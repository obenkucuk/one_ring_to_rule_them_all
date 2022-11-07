import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsController extends GetxController {
  final box = GetStorage();

//////////////////////////////// localization
//

  // TODO uygulama varsayılan dili her uygulama için ayarlanmalı
  String defoultLocalization = "en";
  late Rx<AppLocalizations> tr;

  void changeLanguage(String lng) async {
    if (lng == "system") {
      if (supportedLanguages()
          .contains(Locale(Get.deviceLocale!.languageCode))) {
        tr.value = await AppLocalizations.delegate
            .load(Locale(Get.deviceLocale!.languageCode));
        box.write("app_localization", "system");
      } else {
        tr.value =
            await AppLocalizations.delegate.load(Locale(defoultLocalization));
        box.write("app_localization", "system");
      }
    } else {
      tr.value = await AppLocalizations.delegate.load(Locale(lng));
      box.write("app_localization", lng);
    }
  }

  List<Locale> supportedLanguages() {
    return AppLocalizations.supportedLocales;
  }

//////////////////////////////// tema
//
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
  ////////////////////////////////
  //

  @override
  void onInit() async {
    super.onInit();
//////////////////////////////// localization
//
    var storageLocalization = box.read("app_localization");
    if (storageLocalization == null) {
      box.write("app_localization", "system");
      storageLocalization = box.read("app_localization");
    }

    String? preferedLocalization;
    if (storageLocalization == "system") {
      final devLocal = Get.deviceLocale!.languageCode;
      supportedLanguages().forEach((element) {
        if (element.languageCode == devLocal) {
          preferedLocalization = devLocal;
          return;
        } else {
          preferedLocalization = defoultLocalization;
        }
      });
    } else {
      preferedLocalization = storageLocalization;
    }

    tr = (await AppLocalizations.delegate.load(Locale(preferedLocalization!)))
        .obs;

//////////////////////////////// tema
//
    //ilk açılış tema modu
    var storageThemeMode = box.read("app_theme_mode");
    if (storageThemeMode == null) {
      box.write("app_theme_mode", "system");
      storageThemeMode = box.read("app_theme_mode");
    }

    // tema modu ne?
    themeMode = storageThemeMode == "dark"
        ? ThemeMode.dark.obs
        : (storageThemeMode == "light"
            ? ThemeMode.light.obs
            : ThemeMode.system.obs);
  }
  ////////////////////////////////
  //
}
