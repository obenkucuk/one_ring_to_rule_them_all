import 'package:base_application/components/theme/theme_controller.dart';
import 'package:base_application/components/theme/theme_data.dart' as theme;
import 'package:base_application/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());
    return Obx((() => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: themeController.isDark.value
              ? theme.lightTheme()
              : theme.darkTheme(),
          title: "My App Title",
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        )));
  }
}
