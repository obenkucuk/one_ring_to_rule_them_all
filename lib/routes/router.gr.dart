// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i9;

import '../core/auth/login/login_screen.dart' as _i4;
import '../core/auth/register/register_screen.dart' as _i5;
import '../core/splash_screen/splash_page.dart' as _i1;
import '../main_screen.dart' as _i3;
import '../screens/main_screen/home_screen/home_screen.dart' as _i6;
import '../screens/main_screen/settings_screen/settings_screen.dart' as _i7;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashPage.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    LoginRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    RegisterRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    MainRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.MainScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.LoginScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.RegisterScreen(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    SettingsRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.HomeScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.SettingsScreen(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          SplashPage.name,
          path: '/',
        ),
        _i8.RouteConfig(
          LoginRouter.name,
          path: 'login',
          children: [
            _i8.RouteConfig(
              LoginRoute.name,
              path: '',
              parent: LoginRouter.name,
            )
          ],
        ),
        _i8.RouteConfig(
          RegisterRouter.name,
          path: 'register',
          children: [
            _i8.RouteConfig(
              RegisterRoute.name,
              path: '',
              parent: RegisterRouter.name,
            )
          ],
        ),
        _i8.RouteConfig(
          MainRouter.name,
          path: 'main',
          children: [
            _i8.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: MainRouter.name,
              children: [
                _i8.RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeRouter.name,
                )
              ],
            ),
            _i8.RouteConfig(
              SettingsRouter.name,
              path: 'settings',
              parent: MainRouter.name,
              children: [
                _i8.RouteConfig(
                  SettingsRoute.name,
                  path: '',
                  parent: SettingsRouter.name,
                )
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPage extends _i8.PageRouteInfo<void> {
  const SplashPage()
      : super(
          SplashPage.name,
          path: '/',
        );

  static const String name = 'SplashPage';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class LoginRouter extends _i8.PageRouteInfo<void> {
  const LoginRouter({List<_i8.PageRouteInfo>? children})
      : super(
          LoginRouter.name,
          path: 'login',
          initialChildren: children,
        );

  static const String name = 'LoginRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class RegisterRouter extends _i8.PageRouteInfo<void> {
  const RegisterRouter({List<_i8.PageRouteInfo>? children})
      : super(
          RegisterRouter.name,
          path: 'register',
          initialChildren: children,
        );

  static const String name = 'RegisterRouter';
}

/// generated route for
/// [_i3.MainScreen]
class MainRouter extends _i8.PageRouteInfo<void> {
  const MainRouter({List<_i8.PageRouteInfo>? children})
      : super(
          MainRouter.name,
          path: 'main',
          initialChildren: children,
        );

  static const String name = 'MainRouter';
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i5.RegisterScreen]
class RegisterRoute extends _i8.PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: '',
        );

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRouter extends _i8.PageRouteInfo<void> {
  const HomeRouter({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class SettingsRouter extends _i8.PageRouteInfo<void> {
  const SettingsRouter({List<_i8.PageRouteInfo>? children})
      : super(
          SettingsRouter.name,
          path: 'settings',
          initialChildren: children,
        );

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [_i6.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i7.SettingsScreen]
class SettingsRoute extends _i8.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: '',
        );

  static const String name = 'SettingsRoute';
}
