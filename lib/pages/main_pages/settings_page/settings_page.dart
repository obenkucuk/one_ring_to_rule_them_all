import 'package:base_application/pages/main_pages/settings_page/view/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/settings_controller.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsController>(
      init: SettingsController(),
      builder: (controller) => const SettingsView(),
    );
  }
}
