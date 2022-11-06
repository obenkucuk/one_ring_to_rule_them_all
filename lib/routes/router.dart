import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:base_application/main_page.dart';
import 'package:base_application/pages/main_pages/home_page/home_page.dart';

import '../pages/main_pages/settings_page/settings_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: "Page,Route",
  routes: <AutoRoute>[
    AutoRoute(
      path: "/",
      page: MainPage,
      children: <AutoRoute>[
        AutoRoute(
          path: "pagea",
          name: "PageARouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: "",
              page: HomePage,
            ),
          ],
        ),
        AutoRoute(
          path: "pageb",
          name: "PageBRouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: "",
              page: SettingsPage,
            ),
          ],
        ),
      ],
    )
  ],
)
class $AppRouter {}
