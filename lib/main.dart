import 'package:base_application/core/shared_preferences_x.dart';
import 'package:base_application/screens/main_screen/settings_screen/controller/settings_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/media_query_x.dart';
import 'routes/router.gr.dart';
import 'theme/theme_data_dark.dart';
import 'theme/theme_data_light.dart';

void main() async {
  await SharedPreferencesX.init();
  runApp(const MyApp());
}

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SettingsController());
    MediaQueryX.setScreenSize(context);

    return StreamBuilder<ThemeMode>(
      stream: ThemeStream.outTheme,
      builder: (context, themeSnapshot) {
        return MaterialApp.router(
          key: Get.find<SettingsController>().globalAppKey,
          scaffoldMessengerKey: Get.find<SettingsController>().snackbarKey,
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          title: "My App Title",
          themeMode: themeSnapshot.data,
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        );
      },
    );
  }
}
