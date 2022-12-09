import 'package:base_application/screens/main_screen/settings_screen/controller/settings_controller.dart';
import 'package:base_application/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/app_size.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = Get.find<SettingsController>();

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Settings",
            style: TextStylesX(context).s8W500,
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () => controller.changeTheme(themeMode: ThemeMode.dark, brightness: Brightness.dark),
                icon: const Icon(Icons.dark_mode),
              ),
              IconButton(
                onPressed: () => controller.changeTheme(themeMode: ThemeMode.light, brightness: Brightness.light),
                icon: const Icon(Icons.light_mode),
              ),
              IconButton(
                onPressed: () => controller.changeTheme(
                    themeMode: ThemeMode.system,
                    brightness: SizeX.platformBrightness == Brightness.dark ? Brightness.dark : Brightness.light),
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
    );
  }
}
