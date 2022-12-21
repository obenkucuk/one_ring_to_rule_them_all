import 'package:base_application/screens/auth/login/login_screen.dart';
import 'package:base_application/screens/auth/register/register_screen.dart';
import 'package:base_application/core/splash_screen/splash_screen.dart';
import 'package:base_application/screens/main_screens/home_screen/home_screen.dart';
import 'package:base_application/screens/main_screens/portfolio_screen/portfolio_screen.dart';
import 'package:base_application/screens/main_screens/settings_screen/settings_screen.dart';
import 'package:base_application/screens/others/add_stock/add_stock_screen.dart';
import 'package:base_application/session_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../main_screen.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final GoRouter appRouter = GoRouter(
  navigatorKey: navigatorKey,
  // debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: RoutesNames.splash,
      pageBuilder: (context, state) {
        return const MaterialPage(child: SplashScreen());
      },
    ),
    GoRoute(
      path: '/main',
      name: RoutesNames.main,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const MainScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: '/login',
      name: RoutesNames.login,
      pageBuilder: (context, state) {
        return const MaterialPage(child: LoginScreen());
      },
    ),
    GoRoute(
      path: '/register',
      name: RoutesNames.register,
      pageBuilder: (context, state) {
        return const MaterialPage(child: RegisterScreen());
      },
    ),
    GoRoute(
      path: '/home',
      name: RoutesNames.home,
      pageBuilder: (context, state) {
        return const MaterialPage(child: HomeScreen());
      },
    ),
    GoRoute(
      path: '/settings',
      name: RoutesNames.settings,
      pageBuilder: (context, state) {
        return const MaterialPage(child: SettingsScreen());
      },
    ),
    GoRoute(
      path: '/portfolio',
      name: RoutesNames.portfolio,
      pageBuilder: (context, state) {
        return const MaterialPage(child: PortfolioScreen());
      },
    ),
    GoRoute(
      path: '/add_stock',
      name: RoutesNames.addStock,
      pageBuilder: (context, state) {
        return const MaterialPage(child: AddStockScreen());
      },
    ),
  ],
  errorPageBuilder: (context, state) {
    return const MaterialPage(child: Scaffold(body: Center(child: Text('Error Page will be here'))));
  },
  redirect: (BuildContext context, GoRouterState state) {
    var settings = Get.find<SessionServices>();

    if (settings.isLogin.isFalse && state.subloc != '/') {
      return '/login';
    }
    return null;
  },
);

/// Uygulamadaki rotaların isimleri.
class RoutesNames {
  static const String home = 'home';
  static const String settings = 'settings';
  static const String main = 'main';
  static const String splash = 'splash';
  static const String login = 'login';
  static const String register = 'register';
  static const String portfolio = 'portfolio';
  static const String addStock = 'addStock';
}
