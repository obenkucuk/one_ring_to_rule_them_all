import 'package:auto_route/auto_route.dart';
import 'package:base_application/components/navigation_bar/salomon_bottom_bar.dart';
import 'package:base_application/routes/router.gr.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRouter(),
        SettingsRouter(),
      ],
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBuilder: (context, tabsRouter) => SalomonBottomBar(
        currentIndex: tabsRouter.activeIndex,
        onTap: (a) {
          // ikinci basılışta ana sayfaya dönmesi için
          print(a);
          print(tabsRouter.activeIndex);
          if (tabsRouter.activeIndex == a) {
            tabsRouter.popTop();
            print("aynı");
          } else {
            tabsRouter.setActiveIndex(a);
            print("farklı");
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
