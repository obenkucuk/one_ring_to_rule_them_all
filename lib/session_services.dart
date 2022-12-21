import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'core/media_query_x.dart';
import 'core/shared_preferences_x.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SessionServices extends GetxController {
  final snackbarKey = GlobalKey<ScaffoldMessengerState>();

  // internet bağlantısını birden fazla kontrol etmemek için
  RxBool isNetworkChecking = false.obs;

  final Rx<ThemeMode> systemThemeMode = Rx(ThemeMode.system);
  final RxBool isLogin = false.obs;

  late Rx<AppLocalizations> lang;

  final Rx<Locale> locale = Rx(const Locale('en'));

  @override
  void onInit() async {
    super.onInit();
    _initLocalization();
    _initTheme();
  }

  void _initLocalization() async {
    var storageLocalization = SharedPreferencesX.getString(StorageArgs.appLocalization);

    if (storageLocalization == null) {
      SharedPreferencesX.setString(StorageArgs.appLocalization, ThemeMode.system.name);
      storageLocalization = SharedPreferencesX.getString(StorageArgs.appLocalization);
    }

    String? preferedLocalization;
    if (storageLocalization == ThemeMode.system.name) {
      var devLocal = Get.deviceLocale!.languageCode;
      List<String> sysLangs = [];
      supportedLanguages().forEach((element) {
        sysLangs.add(element.languageCode);
      });
      if (sysLangs.contains(devLocal)) {
        preferedLocalization = devLocal;
      } else {
        preferedLocalization = locale.value.countryCode;
      }
    } else {
      preferedLocalization = storageLocalization;
    }

    lang = (await AppLocalizations.delegate.load(Locale(preferedLocalization!))).obs;
  }

  /// Dil değiştirmek için
  void changeLanguage(String language) async {
    if (language == 'system') {
      var systemLanguage = Locale(Get.deviceLocale!.languageCode);

      if (supportedLanguages().contains(systemLanguage)) {
        lang.value = await AppLocalizations.delegate.load(systemLanguage);
        SharedPreferencesX.setString(StorageArgs.appLocalization, StorageArgs.system);
      } else {
        lang.value = await AppLocalizations.delegate.load(locale.value);
        SharedPreferencesX.setString(StorageArgs.appLocalization, StorageArgs.system);
      }
    } else {
      lang.value = await AppLocalizations.delegate.load(Locale(language));
      SharedPreferencesX.setString(StorageArgs.appLocalization, language);
    }
  }

  List<Locale> supportedLanguages() {
    return AppLocalizations.supportedLocales;
  }

  void changeTheme({required ThemeMode themeMode, Brightness? brightness}) {
    SharedPreferencesX.setString(StorageArgs.appThemeMode, themeMode.name);
    systemThemeMode(themeMode);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarBrightness: brightness));
    update([SessionServicesUpdateKeys.materialApp]);
  }

  void _initTheme() {
    //ilk açılış tema modu
    String? storageThemeMode = SharedPreferencesX.getString(StorageArgs.appThemeMode);

    if (storageThemeMode == null) {
      SharedPreferencesX.setString(StorageArgs.appThemeMode, StorageArgs.system);
      storageThemeMode = SharedPreferencesX.getString(StorageArgs.appThemeMode);
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

enum SessionServicesUpdateKeys { materialApp }
