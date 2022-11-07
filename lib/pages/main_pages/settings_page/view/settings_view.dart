import 'package:base_application/pages/main_pages/settings_page/controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () => controller.changeTheme(ThemeMode.dark),
              icon: const Icon(Icons.dark_mode)),
          IconButton(
              onPressed: () => controller.changeTheme(ThemeMode.light),
              icon: const Icon(Icons.light_mode)),
          IconButton(
              onPressed: () => controller.changeTheme(ThemeMode.system),
              icon: const Icon(Icons.settings)),
        ],
      ),
    );
  }
}
