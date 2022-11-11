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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:auto_route/empty_router_widgets.dart' as _i3;
import 'package:flutter/material.dart' as _i8;

import '../components/splash/splash_page.dart' as _i1;
import '../main_screen.dart' as _i2;
import '../pages/deneme_page.dart' as _i5;
import '../pages/main_screen/home_screen/home_screen.dart' as _i4;
import '../pages/main_screen/settings_screen/settings_screen.dart' as _i6;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashPage.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.MainScreen(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    SettingsRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.HomeScreen(),
      );
    },
    DenemeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.DenemeScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.SettingsScreen(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          SplashPage.name,
          path: '/',
        ),
        _i7.RouteConfig(
          MainRoute.name,
          path: 'main',
          children: [
            _i7.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: MainRoute.name,
              children: [
                _i7.RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeRouter.name,
                ),
                _i7.RouteConfig(
                  DenemeRoute.name,
                  path: 'DenemeRouter',
                  parent: HomeRouter.name,
                ),
              ],
            ),
            _i7.RouteConfig(
              SettingsRouter.name,
              path: 'settings',
              parent: MainRoute.name,
              children: [
                _i7.RouteConfig(
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
class SplashPage extends _i7.PageRouteInfo<void> {
  const SplashPage()
      : super(
          SplashPage.name,
          path: '/',
        );

  static const String name = 'SplashPage';
}

/// generated route for
/// [_i2.MainScreen]
class MainRoute extends _i7.PageRouteInfo<void> {
  const MainRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: 'main',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class HomeRouter extends _i7.PageRouteInfo<void> {
  const HomeRouter({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class SettingsRouter extends _i7.PageRouteInfo<void> {
  const SettingsRouter({List<_i7.PageRouteInfo>? children})
      : super(
          SettingsRouter.name,
          path: 'settings',
          initialChildren: children,
        );

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.DenemeScreen]
class DenemeRoute extends _i7.PageRouteInfo<void> {
  const DenemeRoute()
      : super(
          DenemeRoute.name,
          path: 'DenemeRouter',
        );

  static const String name = 'DenemeRoute';
}

/// generated route for
/// [_i6.SettingsScreen]
class SettingsRoute extends _i7.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: '',
        );

  static const String name = 'SettingsRoute';
}
