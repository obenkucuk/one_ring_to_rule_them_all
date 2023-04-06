import 'dart:io';
import 'package:base_application/core/media_query_x.dart';
import 'package:base_application/screens/main_screens/home_screen/home_screen.dart';
import 'package:base_application/screens/main_screens/portfolio_screen/portfolio_screen.dart';
import 'package:base_application/theme/app_colors_x.dart';
import 'package:base_application/theme/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/main_screens/settings_screen/settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<Widget> mainScreens = const [HomeScreen(), PortfolioScreen(), SettingsScreen()];

  String _scaffoldMessage = '';
  bool isMessengerActive = false;
  final Color _scaffoldColor = AppColorsX.error;
  double messangerHeight = MediaQueryX.height * 0.06;

  Future<void> showSnacbar(String message) async {
    setState(() {
      isMessengerActive = true;
      _scaffoldMessage = message;
    });

    await Future.delayed(const Duration(seconds: 3)).whenComplete(() {
      setState(() => isMessengerActive = false);
      messangerHeight = MediaQueryX.height * 0.06;
    });
  }

  void updateMessangerHeight(DragUpdateDetails details) {
    var position = MediaQueryX.height - details.globalPosition.dy;
    if (messangerHeight < position) position = MediaQueryX.height * 0.08;
    setState(() {
      messangerHeight = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MainScreenInheritedWidget(
      state: this,
      child: Scaffold(
        body: mainScreens[_selectedIndex],
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (Platform.isAndroid)
              NavigationBar(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                onDestinationSelected: (int index) => setState(() => _selectedIndex = index),
                selectedIndex: _selectedIndex,
                destinations: const [
                  NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                  NavigationDestination(icon: Icon(Icons.grid_3x3), label: 'Port'),
                  NavigationDestination(
                    selectedIcon: Icon(Icons.bookmark),
                    icon: Icon(Icons.bookmark_border),
                    label: 'Setting',
                  ),
                ],
              )
            else
              CupertinoTabBar(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                currentIndex: _selectedIndex,
                activeColor: Theme.of(context).colorScheme.primary,
                onTap: (int index) => setState(() => _selectedIndex = index),
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(icon: Icon(Icons.grid_3x3), label: 'Port'),
                  BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
                ],
              ),
            GestureDetector(
              onVerticalDragUpdate: (details) => updateMessangerHeight(details),
              child: ColoredBox(
                color: _scaffoldColor,
                child: AnimatedContainer(
                  curve: Curves.linearToEaseOut,
                  duration: const Duration(milliseconds: 300),
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(top: MediaQueryX.height * 0.005),
                  height: isMessengerActive ? messangerHeight : 0,
                  width: MediaQueryX.width,
                  child: Text(
                    _scaffoldMessage,
                    style: s14W400.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainScreenInheritedWidget extends InheritedWidget {
  MainScreenInheritedWidget({
    required this.state,
    required super.child,
  });
  final MainScreenState state;

  static MainScreenState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MainScreenInheritedWidget>()!.state;
  }

  @override
  bool updateShouldNotify(covariant MainScreenInheritedWidget oldWidget) {
    return state.isMessengerActive != oldWidget.state.isMessengerActive;
  }
}

enum MessageType { error, success, info }
