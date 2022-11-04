import 'package:base_application/error_page.dart';
import 'package:base_application/screens/read_asset/read_asset_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/my_home_page.dart';
import '../screens/read_asset_screen2.dart';

final GoRouter router = GoRouter(
  errorPageBuilder: (context, state) => const MaterialPage<void>(
    child: ErrorPage(),
  ),
  initialLocation: "/",
  debugLogDiagnostics: true,
  routes: <GoRoute>[
    GoRoute(
      path: "/",
      pageBuilder: (context, state) => const MaterialPage<void>(
        child: MyHomePage(title: "title"),
      ),
      routes: <GoRoute>[
        GoRoute(
          path: "b",
          builder: (BuildContext context, GoRouterState state) {
            return const ReadAssetScreen();
          },
        )
      ],
    ),
    GoRoute(
      path: "/c",
      pageBuilder: (context, state) => const MaterialPage<void>(
        child: ReadAssetScreen2(),
      ),
    ),
  ],
);
