import 'dart:io';

import 'package:base_application/screens/main_screens/home_screen/home_screen.dart';
import 'package:base_application/screens/main_screens/portfolio_screen/portfolio_screen.dart';
import 'package:base_application/session_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      bottomNavigationBar: Platform.isAndroid
          ? NavigationBar(
              onDestinationSelected: (int index) => setState(() => selectedScreen = index),
              selectedIndex: selectedScreen,
              destinations: const <Widget>[
                NavigationDestination(icon: Icon(Icons.explore), label: 'Explore'),
                NavigationDestination(icon: Icon(Icons.commute), label: 'Commute'),
                NavigationDestination(
                    selectedIcon: Icon(Icons.bookmark), icon: Icon(Icons.bookmark_border), label: 'Saved'),
              ],
            )
          : CupertinoTabBar(
              currentIndex: selectedScreen,
              onTap: (index) => setState(() => selectedScreen = index),
              items: [
                const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                const BottomNavigationBarItem(icon: Icon(Icons.grid_3x3), label: 'Port'),
                const BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
              ],
            ),
    );
  }
}
