import 'package:auto_route/auto_route.dart';
import 'package:base_application/components/navigation_bar/salomon_bottom_bar.dart';
import 'package:base_application/routes/router.gr.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const List<PageRouteInfo<dynamic>> routes = [AuthRouter(), HomeRouter(), SettingsRouter()];
    return AutoTabsScaffold(
      routes: routes,
      bottomNavigationBuilder: (context, tabsRouter) => SalomonBottomBar(
        currentIndex: tabsRouter.activeIndex,
        onTap: (index) async {
          // ikinci basılışta ana sayfaya dönmesi için

          if (tabsRouter.activeIndex == index) {
            while (true) {
              if (tabsRouter.canPop()) {
                await Future.wait([]);
                tabsRouter.popTop();
              } else {
                break;
              }
            }
          } else {
            tabsRouter.setActiveIndex(index);
          }
        },
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.login),
            title: const Text("Auth"),
          ),
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
