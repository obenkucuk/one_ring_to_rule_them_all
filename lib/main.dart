import 'package:base_application/core/shared_preferences_x.dart';
import 'package:base_application/router/router.dart';
import 'package:base_application/session_services.dart';

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
    Get.lazyPut(() => SessionServices());
    MediaQueryX.setScreenSize(context);

    return GetBuilder<SessionServices>(
        id: SessionServicesUpdateKeys.materialApp,
        builder: (sessionServices) {
          return MaterialApp.router(
            scaffoldMessengerKey: sessionServices.snackbarKey,
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            title: 'One Ring to Rule Them All',
            themeMode: sessionServices.systemThemeMode.value,
            routerConfig: appRouter,

            // routeInformationParser: appRouter.routeInformationParser,
            // routerDelegate: appRouter.routerDelegate,
          );
        });
  }
}
