import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/main_screen/home_screen/home_screen.dart';
import 'screens/main_screen/settings_screen/settings_screen.dart';

class MainScreenController extends GetxController {
  final RxInt selectedScreen = 0.obs;

  final List<Widget> mainScreens = const [HomeScreen(), SettingsScreen()];
}
