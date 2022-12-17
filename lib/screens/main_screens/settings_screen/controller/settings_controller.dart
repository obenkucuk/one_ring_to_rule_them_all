import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../core/media_query_x.dart';
import '../../../../core/shared_preferences_x.dart';

class SettingsController extends GetxController {
  final GlobalKey scaffoldKey = GlobalKey();

  BuildContext get context => scaffoldKey.currentContext!;

  final snackbarKey = GlobalKey<ScaffoldMessengerState>();

  // internet bağlantısını birden fazla kontrol etmemek için
  RxBool isNetworkChecking = false.obs;
  final Rx<ThemeMode> systemThemeMode = Rx(ThemeMode.system);
  final RxBool isLogin = false.obs;

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
    systemThemeMode(themeMode);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarBrightness: brightness));
    update([SettingsUpdateKeys.materialApp]);
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

enum SettingsUpdateKeys { materialApp }

enum StorageKeys { appLocalization, appThemeMode }
