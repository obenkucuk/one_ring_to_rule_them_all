import 'package:base_application/core/screen_utility/screenutil_init.dart';
import 'package:base_application/core/shared_pref.dart';
import 'package:base_application/screens/main_screen/settings_screen/controller/settings_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/app_size.dart';
import 'routes/router.gr.dart';
import 'theme/theme_data_dark.dart';
import 'theme/theme_data_light.dart';

void main() async {
  await SharedPrefs.init();
  runApp(const MyApp());
}

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SettingsController());

    return StreamBuilder<ThemeMode>(
      stream: ThemeStream.outTheme,
      builder: (context, themeSnapshot) {
        return ScreenUtilInit(
          designSize: const Size(430, 932),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
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
      },
    );
  }
}
