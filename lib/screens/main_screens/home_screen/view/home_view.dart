import 'package:base_application/core/media_query_x.dart';
import 'package:base_application/screens/main_screens/home_screen/controller/home_controller.dart';
import 'package:base_application/screens/main_screens/settings_screen/controller/settings_controller.dart';
import 'package:base_application/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = Get.find<SettingsController>();
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    settings.lang.value.helloWorld,
                    style: TextStylesX(context).s18W500,
                  ),
                ),
                Text(
                  "Settings",
                  style: TextStylesX(context).s8W500,
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => settings.changeTheme(themeMode: ThemeMode.dark, brightness: Brightness.dark),
                      icon: const Icon(Icons.dark_mode),
                    ),
                    IconButton(
                      onPressed: () => settings.changeTheme(themeMode: ThemeMode.light, brightness: Brightness.light),
                      icon: const Icon(Icons.light_mode),
                    ),
                    IconButton(
                      onPressed: () => settings.changeTheme(
                          themeMode: ThemeMode.system,
                          brightness:
                              MediaQueryX.platformBrightness == Brightness.dark ? Brightness.dark : Brightness.light),
                      icon: const Icon(Icons.settings),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: (() {
                          settings.changeLanguage("tr");
                        }),
                        child: const Text("TR")),
                    TextButton(
                        onPressed: (() {
                          settings.changeLanguage("en");
                        }),
                        child: const Text("EN")),
                    TextButton(
                        onPressed: (() {
                          settings.changeLanguage("system");
                        }),
                        child: const Text("system")),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
