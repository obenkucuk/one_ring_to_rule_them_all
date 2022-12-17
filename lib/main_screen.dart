import 'package:base_application/screens/main_screen/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

import 'components/navigation_bar/bottom_bar_x.dart';
import 'screens/main_screen/settings_screen/settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedScreen = 0;

  final List<Widget> mainScreens = const [HomeScreen(), SettingsScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mainScreens[selectedScreen],
      bottomNavigationBar: BottomBarX(
        currentIndex: selectedScreen,
        onTap: (index) => setState(() {
          selectedScreen = index;
          debugPrint("main screen state updated");
        }),
        items: [
          BarItemX(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
          ),
          BarItemX(
            icon: const Icon(Icons.settings),
            title: const Text("Settings"),
          ),
        ],
      ),
    );
  }
}
