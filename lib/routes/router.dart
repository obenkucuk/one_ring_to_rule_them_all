import 'package:base_application/main_screen.dart';
import 'package:base_application/screens/main_screen/settings_screen/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      name: "home",
      path: '/',
      pageBuilder: (context, state) {
        return const MaterialPage(child: MainScreen());
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
    return const MaterialPage(child: Text("Error Page will be here"));
  },
  // redirect: (context, state) {
  //   if (!isAuth && state.location.startsWith('')) {
  //     return context.namedLocation("");
  //   } else {
  //     return null;
  //   }
  // },
);
