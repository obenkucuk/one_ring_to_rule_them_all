import 'package:base_application/router/router.dart';
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

  final Rx<Locale> locale = Rx(const Locale('tr'));
  final Rx<ThemeMode> systemThemeMode = Rx(ThemeMode.system);
  final RxBool isLogin = false.obs;

  @override
  void onInit() async {
    super.onInit();
    _initTheme();
  }

  void changeLocale() {
    locale(const Locale('en'));
    update([SessionServicesUpdateKeys.materialApp]);
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

AppLocalizations? get appLocalization => AppLocalizations.of(navigatorKey.currentContext!);
