import 'package:base_application/screens/main_screens/settings_screen/view/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/settings_controller.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsController>(
      init: SettingsController(),
      builder: (controller) => const SettingsView(),
    );
  }
}
