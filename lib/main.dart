import 'package:base_application/components/splash/splash_view.dart';
import 'package:base_application/components/theme/theme_controller.dart';
import 'package:base_application/components/theme/theme_data.dart' as theme;
import 'package:base_application/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();

  runApp(const MyApp());
}

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(BackgroundServices());

    return themeController.obx(
        (state) => Obx((() => MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: theme.lightTheme(),
              darkTheme: theme.darkTheme(),
              themeMode: themeController.themeMode.value == ThemeMode.system
                  ? ThemeMode.system
                  : (themeController.themeMode.value == ThemeMode.dark
                      ? ThemeMode.dark
                      : ThemeMode.light),
              title: "My App Title",
              routerDelegate: _appRouter.delegate(),
              routeInformationParser: _appRouter.defaultRouteParser(),
            ))),
        onLoading: const MaterialApp(
          home: SplashView(),
        ));
  }
}
