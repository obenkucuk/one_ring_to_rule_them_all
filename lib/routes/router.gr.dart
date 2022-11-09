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
    PageARouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    PageBRouter.name: (routeData) {
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
    DenemePage.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.DenemePage(),
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
              PageARouter.name,
              path: 'pagea',
              parent: MainRoute.name,
              children: [
                _i7.RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: PageARouter.name,
                ),
                _i7.RouteConfig(
                  DenemePage.name,
                  path: 'deneme',
                  parent: PageARouter.name,
                ),
              ],
            ),
            _i7.RouteConfig(
              PageBRouter.name,
              path: 'pageb',
              parent: MainRoute.name,
              children: [
                _i7.RouteConfig(
                  SettingsRoute.name,
                  path: '',
                  parent: PageBRouter.name,
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
class PageARouter extends _i7.PageRouteInfo<void> {
  const PageARouter({List<_i7.PageRouteInfo>? children})
      : super(
          PageARouter.name,
          path: 'pagea',
          initialChildren: children,
        );

  static const String name = 'PageARouter';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class PageBRouter extends _i7.PageRouteInfo<void> {
  const PageBRouter({List<_i7.PageRouteInfo>? children})
      : super(
          PageBRouter.name,
          path: 'pageb',
          initialChildren: children,
        );

  static const String name = 'PageBRouter';
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
/// [_i5.DenemePage]
class DenemePage extends _i7.PageRouteInfo<void> {
  const DenemePage()
      : super(
          DenemePage.name,
          path: 'deneme',
        );

  static const String name = 'DenemePage';
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
