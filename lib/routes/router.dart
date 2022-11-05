import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:base_application/home_page.dart';
import 'package:base_application/pages/main_pages/page_a/page_a_page.dart';

import '../pages/main_pages/page_b/pages_b_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: "Page,Route",
  routes: <AutoRoute>[
    AutoRoute(
      path: "/",
      page: HomePage,
      children: <AutoRoute>[
        AutoRoute(
          path: "pagea",
          name: "PageARouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: "",
              page: PageAPage,
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
              page: PageBPage,
            ),
          ],
        ),
      ],
    )
  ],
)
class $AppRouter {}
