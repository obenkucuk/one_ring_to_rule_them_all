import 'package:base_application/theme/theme_data.dart' as theme;
import 'package:base_application/initial_bindings.dart';
import 'package:base_application/pages/main_pages/settings_page/controller/settings_controller.dart';
import 'package:base_application/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// batuhanın keyfi için
enum BatuExample { oben, doga, batu }

/// BatuExample.batu.name
void main() async {
  await SharedPrefs.init();

  runApp(const MyApp());
}

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final SettingsController themeController = Get.put(SettingsController());
    return GetMaterialApp.router(
      scaffoldMessengerKey: themeController.snackbarKey,
      key: themeController.appGlobalKey,

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

      themeMode: themeController.themeMode.value == ThemeMode.system
          ? ThemeMode.system
          : (themeController.themeMode.value == ThemeMode.dark ? ThemeMode.dark : ThemeMode.light),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      initialBinding: InitialBinding(),
    );
  }
}
