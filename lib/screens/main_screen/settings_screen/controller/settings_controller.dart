import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../core/media_query_x.dart';
import '../../../../core/shared_preferences_x.dart';

enum StorageKeys { appLocalization, appThemeMode }

class SettingsController extends GetxController {
  final globalAppKey = GlobalKey();
  final snackbarKey = GlobalKey<ScaffoldMessengerState>();

  BuildContext get context => globalAppKey.currentContext!;

  // internet bağlantısını birden fazla kontrol etmemek için
  RxBool isNetworkChecking = false.obs;

  late Rx<AppLocalizations> lang;

  // NOT uygulama varsayılan dili her uygulama için ayarlanmalı
  final String _defoultLocalization = "en";

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
        SharedPreferencesX.setString(StorageKeys.appLocalization.name, ThemeMode.system.name);
      } else {
        lang.value = await AppLocalizations.delegate.load(Locale(_defoultLocalization));
        SharedPreferencesX.setString(StorageKeys.appLocalization.name, ThemeMode.system.name);
      }
    } else {
      lang.value = await AppLocalizations.delegate.load(Locale(language));
      SharedPreferencesX.setString(StorageKeys.appLocalization.name, language);
    }
  }

  List<Locale> supportedLanguages() {
    return AppLocalizations.supportedLocales;
  }

  _initLocalization() async {
    var storageLocalization = SharedPreferencesX.getString(StorageKeys.appLocalization.name);
    if (storageLocalization == "null") {
      SharedPreferencesX.setString(StorageKeys.appLocalization.name, ThemeMode.system.name);
      storageLocalization = SharedPreferencesX.getString(StorageKeys.appLocalization.name);
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

  void changeTheme({required ThemeMode themeMode, Brightness? brightness}) {
    SharedPreferencesX.setString(StorageKeys.appThemeMode.name, themeMode.name);
    ThemeStream.inTheme = themeMode;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarBrightness: brightness));
  }

  _initTheme() {
    //ilk açılış tema modu
    String storageThemeMode = SharedPreferencesX.getString(StorageKeys.appThemeMode.name);

    if (storageThemeMode == "null") {
      SharedPreferencesX.setString(StorageKeys.appThemeMode.name, ThemeMode.system.name);
      storageThemeMode = SharedPreferencesX.getString(StorageKeys.appThemeMode.name);
    }

    // tema modu ne?
    storageThemeMode == ThemeMode.dark.name
        ? changeTheme(themeMode: ThemeMode.dark, brightness: Brightness.dark)
        : storageThemeMode == ThemeMode.light.name
            ? changeTheme(themeMode: ThemeMode.light, brightness: Brightness.light)
            : changeTheme(
                themeMode: ThemeMode.system,
                brightness: MediaQueryX.platformBrightness == Brightness.dark ? Brightness.dark : Brightness.light);
  }
}

class ThemeStream {
  static StreamController<ThemeMode> theme = StreamController<ThemeMode>.broadcast();
  static set inTheme(ThemeMode mode) => theme.sink.add(mode);
  static Stream<ThemeMode> get outTheme => theme.stream;

  static dispose() {
    log("Theme stream dispose method has been triggered");
    theme.close();
  }
}
