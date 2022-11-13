import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../core/shared_pref.dart';

enum StorageKeys { appLocalization, appThemeMode }

class SettingsController extends GetxController {
  //------------EXEPIONS------------//

  // internet bağlantısını birden fazla kontrol etmemek için
  RxBool isNetworkChecking = false.obs;

  late Rx<AppLocalizations> lang;

  //------------LOCALIZATION------------//

  // NOT uygulama varsayılan dili her uygulama için ayarlanmalı
  final String _defoultLocalization = "en";

//------------TEMA------------//

  @override
  void onInit() async {
    super.onInit();

    _initLocalization();

    _initTheme();
  }

  /// Dil değiştirmek için
  void changeLanguage(String language) async {
    if (language == "system") {
      var systemLanguage = Locale(Get.deviceLocale!.languageCode);

      if (supportedLanguages().contains(systemLanguage)) {
        lang.value = await AppLocalizations.delegate.load(systemLanguage);
        SharedPrefs.write(StorageKeys.appLocalization.name, ThemeMode.system.name);
      } else {
        lang.value = await AppLocalizations.delegate.load(Locale(_defoultLocalization));
        SharedPrefs.write(StorageKeys.appLocalization.name, ThemeMode.system.name);
      }
    } else {
      lang.value = await AppLocalizations.delegate.load(Locale(language));
      SharedPrefs.write(StorageKeys.appLocalization.name, language);
    }
  }

  List<Locale> supportedLanguages() {
    return AppLocalizations.supportedLocales;
  }

  _initLocalization() async {
    var storageLocalization = SharedPrefs.read(StorageKeys.appLocalization.name);
    if (storageLocalization == "null") {
      SharedPrefs.write(StorageKeys.appLocalization.name, ThemeMode.system.name);
      storageLocalization = SharedPrefs.read(StorageKeys.appLocalization.name);
    }

    String? preferedLocalization;
    if (storageLocalization == ThemeMode.system.name) {
      final devLocal = Get.deviceLocale!.languageCode;
      List<String> sysLangs = [];
      supportedLanguages().forEach((element) {
        sysLangs.add(element.languageCode);
      });
      if (sysLangs.contains(devLocal)) {
        preferedLocalization = devLocal;
      } else {
        preferedLocalization = _defoultLocalization;
      }
    } else {
      preferedLocalization = storageLocalization;
    }

    lang = (await AppLocalizations.delegate.load(Locale(preferedLocalization))).obs;
  }

  /// Tema Modu Değiştirme
  void changeTheme(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.dark:
        SharedPrefs.write(StorageKeys.appThemeMode.name, ThemeMode.dark.name);
        ThemeStream.inTheme = ThemeMode.dark;
        break;
      case (ThemeMode.light):
        SharedPrefs.write(StorageKeys.appThemeMode.name, ThemeMode.light.name);
        ThemeStream.inTheme = ThemeMode.light;
        break;
      default:
        SharedPrefs.write(StorageKeys.appThemeMode.name, ThemeMode.system.name);
        ThemeStream.inTheme = ThemeMode.system;
    }
  }

  _initTheme() {
    //ilk açılış tema modu
    String storageThemeMode = SharedPrefs.read(StorageKeys.appThemeMode.name);

    if (storageThemeMode == "null") {
      SharedPrefs.write(StorageKeys.appThemeMode.name, ThemeMode.system.name);
      storageThemeMode = SharedPrefs.read(StorageKeys.appThemeMode.name);
    }

    // tema modu ne?
    storageThemeMode == "dark"
        ? ThemeStream.initialThemeMode = ThemeMode.dark
        : (storageThemeMode == "light"
            ? ThemeStream.initialThemeMode = ThemeMode.light
            : ThemeStream.initialThemeMode = ThemeMode.system);
  }
}

class ThemeStream {
  static StreamController<ThemeMode> theme = StreamController<ThemeMode>.broadcast();
  static set inTheme(ThemeMode mode) => theme.sink.add(mode);
  static Stream<ThemeMode> get outTheme => theme.stream;

  static ThemeMode initialThemeMode = ThemeMode.system;

  static dispose() {
    log("Theme stream dispose method has been triggered");
    theme.close();
  }
}
