import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:base_application/core/auth/register/register_screen.dart';
import 'package:base_application/screens/diger_sayfalar/search_screen/search_screen.dart';
import 'package:base_application/core/splash_screen/splash_page.dart';
import 'package:base_application/main_screen.dart';
import 'package:base_application/screens/main_screen/home_screen/home_screen.dart';

import '../core/auth/login/login_screen.dart';
import '../screens/main_screen/settings_screen/settings_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: "Screen,Route",
  routes: <AutoRoute>[
    AutoRoute(
      path: "/",
      page: SplashPage,
    ),
    AutoRoute(
      path: "login",
      name: "LoginRouter",
      page: EmptyRouterPage,
      children: [
        AutoRoute(
          path: "",
          page: LoginScreen,
        ),
      ],
    ),
    AutoRoute(
      path: "register",
      name: "RegisterRouter",
      page: EmptyRouterPage,
      children: [
        AutoRoute(
          path: "",
          page: RegisterScreen,
        ),
      ],
    ),
    AutoRoute(
      path: "main",
      name: "MainRouter",
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
            AutoRoute(
              path: "search",
              name: "SearchRouter",
              page: SearchScreen,
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
