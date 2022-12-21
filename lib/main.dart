import 'package:base_application/core/shared_preferences_x.dart';
import 'package:base_application/router/router.dart';
import 'package:base_application/screens/main_screens/settings_screen/controller/settings_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/media_query_x.dart';
import 'theme/theme_data_dark.dart';
import 'theme/theme_data_light.dart';

void main() async {
  await SharedPreferencesX.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SettingsController());
    MediaQueryX.setScreenSize(context);

    return GetBuilder<SettingsController>(
        id: SettingsUpdateKeys.materialApp,
        builder: (settingsController) {
          return MaterialApp.router(
            scaffoldMessengerKey: settingsController.snackbarKey,
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            title: 'Base App',
            themeMode: settingsController.systemThemeMode.value,
            routerConfig: appRouter,
            // routeInformationParser: appRouter.routeInformationParser,
            // routerDelegate: appRouter.routerDelegate,
          );
        });
  }
}
