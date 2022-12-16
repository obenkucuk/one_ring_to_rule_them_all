import 'package:base_application/main_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main_screen_view.dart';

class MainScreen extends GetView<MainScreenController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: MainScreenController(),
      builder: (controller) => const MainScreenView(),
    );
  }
}
