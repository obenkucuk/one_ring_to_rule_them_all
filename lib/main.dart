import 'package:base_application/core/shared_pref.dart';
import 'package:base_application/theme/theme_data.dart' as theme;
import 'package:base_application/pages/main_screen/settings_screen/controller/settings_controller.dart';
import 'package:base_application/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/keys.dart';

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
      builder: (context, snapshot) {
        return MaterialApp.router(
          scaffoldMessengerKey: snackbarKey,
          debugShowCheckedModeBanner: false,
          theme: theme.lightTheme,
          darkTheme: theme.darkTheme,
          title: "My App Title",
          themeMode: snapshot.data,
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        );
      },
    );
  }
}
