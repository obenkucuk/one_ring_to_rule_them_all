import 'package:base_application/core/splash_screen/splash_screen.dart';
import 'package:base_application/screens/main_screen/home_screen/home_screen.dart';
import 'package:base_application/screens/main_screen/settings_screen/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../main_screen.dart';

GoRouter appRouter = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: "splash",
      pageBuilder: (context, state) {
        return const MaterialPage(child: SplashScreen());
      },
    ),
    GoRoute(
      name: "main",
      path: '/main',
      pageBuilder: (context, state) {
        return const MaterialPage(child: MainScreen());
      },
    ),
    GoRoute(
      name: "home",
      path: '/home',
      pageBuilder: (context, state) {
        return const MaterialPage(child: HomeScreen());
      },
    ),
    GoRoute(
      name: "settings",
      path: '/settings',
      pageBuilder: (context, state) {
        return const MaterialPage(child: SettingsScreen());
      },
    ),
  ],
  errorPageBuilder: (context, state) {
    return const MaterialPage(child: Scaffold(body: Center(child: Text("Error Page will be here"))));
  },
);
