import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../core/shared_pref.dart';

enum StorageKeys { appLocalization, appThemeMode }

class SettingsController extends GetxController {
  final GlobalKey<ScaffoldMessengerState> snackbarKey = GlobalKey<ScaffoldMessengerState>();

  ///---------------------------------------///
  // TODO uygulama varsayılan dili her uygulama için ayarlanmalı
  final String _defoultLocalization = "en";
  late Rx<AppLocalizations> lang;

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

//////////////////////////////// tema
//
  late Rx<ThemeMode> _themeMode;

  ThemeMode get themeMode => _themeMode.value;
  set themeMode(ThemeMode mode) {
    _themeMode.value = mode;
  }

  /// Tema Modu Değiştirme
  void changeTheme(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.dark:
        SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark));
        SharedPrefs.write(StorageKeys.appThemeMode.name, ThemeMode.dark.name);
        _themeMode.value = ThemeMode.dark;
        break;
      case (ThemeMode.light):
        SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarBrightness: Brightness.light));
        SharedPrefs.write(StorageKeys.appThemeMode.name, ThemeMode.light.name);
        _themeMode.value = ThemeMode.light;
        break;
      default:
        SharedPrefs.write(StorageKeys.appThemeMode.name, ThemeMode.system.name);
        _themeMode.value = ThemeMode.system;
    }
  }
  ////////////////////////////////
  //

  @override
  void onInit() async {
    super.onInit();
//////////////////////////////// localization
//
    var storageLocalization = SharedPrefs.read(StorageKeys.appLocalization.name);
    if (storageLocalization == "null") {
      SharedPrefs.write(StorageKeys.appLocalization.name, ThemeMode.system.name);
      storageLocalization = SharedPrefs.read(StorageKeys.appLocalization.name);
    }

    String? preferedLocalization;
    if (storageLocalization == ThemeMode.system.name) {
      final devLocal = Get.deviceLocale!.languageCode;
      supportedLanguages().forEach((element) {
        if (element.languageCode == devLocal) {
          preferedLocalization = devLocal;
          return;
        } else {
          preferedLocalization = _defoultLocalization;
        }
      });
    } else {
      preferedLocalization = storageLocalization;
    }

    lang = (await AppLocalizations.delegate.load(Locale(preferedLocalization!))).obs;

//////////////////////////////// tema
//
    //ilk açılış tema modu
    var storageThemeMode = SharedPrefs.read(StorageKeys.appThemeMode.name);
    if (storageThemeMode == "null") {
      SharedPrefs.write(StorageKeys.appThemeMode.name, ThemeMode.system.name);
      storageThemeMode = SharedPrefs.read(StorageKeys.appThemeMode.name);
    }

    // tema modu ne?
    _themeMode = storageThemeMode == "dark"
        ? ThemeMode.dark.obs
        : (storageThemeMode == "light" ? ThemeMode.light.obs : ThemeMode.system.obs);
  }
  ////////////////////////////////
  //
}