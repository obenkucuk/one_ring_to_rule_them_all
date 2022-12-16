import 'package:base_application/main_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/navigation_bar/salomon_bottom_bar.dart';
import 'screens/main_screen/settings_screen/controller/settings_controller.dart';

class MainScreenView extends GetView<MainScreenController> {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        key: Get.find<SettingsController>().mainScreenKey,
        body: controller.mainScreens[controller.selectedScreen.value],
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: controller.selectedScreen.value,
          onTap: (index) => controller.selectedScreen(index),
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.settings),
              title: const Text("Settings"),
            ),
          ],
        ),
      ),
    );
  }
}
