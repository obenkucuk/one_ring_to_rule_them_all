import 'package:base_application/core/shared_pref.dart';
import 'package:base_application/components/theme/theme_data.dart' as theme;
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
    final SettingsController settings = Get.put(SettingsController());
    return Obx(
      () => MaterialApp.router(
        scaffoldMessengerKey: snackbarKey,

        // localizationsDelegates: const [
        //   AppLocalizations.delegate,
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        //   GlobalCupertinoLocalizations.delegate,
        // ],
        // supportedLocales: const [
        //   Locale(
        //     'en',
        //   ),
        //   Locale('tr'),
        // ],
        debugShowCheckedModeBanner: false,
        theme: theme.lightTheme(),
        darkTheme: theme.darkTheme(),
        title: "My App Title",
        themeMode: settings.themeMode,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
