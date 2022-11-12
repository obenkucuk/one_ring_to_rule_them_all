import 'package:auto_route/auto_route.dart';
import 'package:base_application/components/navigation_bar/salomon_bottom_bar.dart';
import 'package:base_application/core/keys.dart';
import 'package:base_application/pages/main_screen/settings_screen/controller/settings_controller.dart';
import 'package:base_application/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      key: appKey,
      routes: const [
        HomeRouter(),
        SettingsRouter(),
      ],
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBuilder: (context, tabsRouter) => SalomonBottomBar(
        currentIndex: tabsRouter.activeIndex,
        onTap: (a) {
          // ikinci basılışta ana sayfaya dönmesi için
          if (tabsRouter.activeIndex == a) {
            tabsRouter.popTop();
          } else {
            tabsRouter.setActiveIndex(a);
          }
        },
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
    );
  }
}
