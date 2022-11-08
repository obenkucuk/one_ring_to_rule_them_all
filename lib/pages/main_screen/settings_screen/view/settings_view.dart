import 'package:base_application/pages/main_screen/settings_screen/controller/settings_controller.dart';
import 'package:base_application/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Settings",
            style: TextStylesX(context).s18W300,
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () => controller.changeTheme(ThemeMode.dark), icon: const Icon(Icons.dark_mode)),
              IconButton(onPressed: () => controller.changeTheme(ThemeMode.light), icon: const Icon(Icons.light_mode)),
              IconButton(onPressed: () => controller.changeTheme(ThemeMode.system), icon: const Icon(Icons.settings)),
            ],
          ),
        ],
      ),
    );
  }
}
