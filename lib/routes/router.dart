import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:base_application/components/splash/splash_page.dart';
import 'package:base_application/main_screen.dart';
import 'package:base_application/screens/main_screen/home_screen/home_screen.dart';

import '../screens/main_screen/settings_screen/settings_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: "Screen,Route",
  routes: <AutoRoute>[
    AutoRoute(
      path: "/",
      page: SplashPage,
    ),
    AutoRoute(
      path: "main",
      page: MainScreen,
      children: <AutoRoute>[
        AutoRoute(
          path: "home",
          name: "HomeRouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: "",
              page: HomeScreen,
            ),
          ],
        ),
        AutoRoute(
          path: "settings",
          name: "SettingsRouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: "",
              page: SettingsScreen,
            ),
          ],
        ),
      ],
    )
  ],
)
class $AppRouter {}
