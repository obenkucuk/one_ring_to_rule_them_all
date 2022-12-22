import 'package:base_application/screens/main_screens/home_screen/home_screen.dart';
import 'package:base_application/screens/main_screens/portfolio_screen/portfolio_screen.dart';
import 'package:base_application/session_services.dart';
import 'package:base_application/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/navigation_bar/bottom_bar_x.dart';
import 'screens/main_screens/settings_screen/settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final sessionServices = Get.find<SessionServices>();
  int selectedScreen = 0;

  final List<Widget> mainScreens = const [HomeScreen(), PortfolioScreen(), SettingsScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mainScreens[selectedScreen],
      bottomNavigationBar: BottomBarX(
        currentIndex: selectedScreen,
        onTap: (index) => setState(() => selectedScreen = index),
        items: [
          BarItemX(
            icon: Icon(
              Icons.home,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            title: Text(appLocalization!.home),
          ),
          BarItemX(
            icon: Icon(
              Icons.grid_on_sharp,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            title: Text('Potfolyo', style: s12W300),
          ),
          BarItemX(
            icon: Icon(
              Icons.settings,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            title: Text(appLocalization!.settings),
          ),
        ],
      ),
    );
  }
}
