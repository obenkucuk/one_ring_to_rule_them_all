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
  int _selectedIndex = 0;

  final List<Widget> mainScreens = const [HomeScreen(), PortfolioScreen(), SettingsScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mainScreens[_selectedIndex],
      bottomNavigationBar: Platform.isAndroid
          ? NavigationBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              onDestinationSelected: (int index) => setState(() => _selectedIndex = index),
              selectedIndex: _selectedIndex,
              destinations: const [
                NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                NavigationDestination(icon: Icon(Icons.grid_3x3), label: 'Port'),
                NavigationDestination(
                    selectedIcon: Icon(Icons.bookmark), icon: Icon(Icons.bookmark_border), label: 'Setting'),
              ],
            )
          : CupertinoTabBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              currentIndex: _selectedIndex,
              onTap: (int index) => setState(() => _selectedIndex = index),
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.grid_3x3), label: 'Port'),
                BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
              ],
            ),
    );
  }
}
