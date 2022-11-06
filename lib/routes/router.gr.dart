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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i6;

import '../main_page.dart' as _i1;
import '../pages/main_pages/home_page/home_page.dart' as _i3;
import '../pages/main_pages/settings_page/settings_page.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainPage(),
      );
    },
    PageARouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    PageBRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    RouteA.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    RouteB.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SettingsPage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          HomeRoute.name,
          path: '/',
          children: [
            _i5.RouteConfig(
              PageARouter.name,
              path: 'pagea',
              parent: HomeRoute.name,
              children: [
                _i5.RouteConfig(
                  RouteA.name,
                  path: '',
                  parent: PageARouter.name,
                )
              ],
            ),
            _i5.RouteConfig(
              PageBRouter.name,
              path: 'pageb',
              parent: HomeRoute.name,
              children: [
                _i5.RouteConfig(
                  RouteB.name,
                  path: '',
                  parent: PageBRouter.name,
                )
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.MainPage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class PageARouter extends _i5.PageRouteInfo<void> {
  const PageARouter({List<_i5.PageRouteInfo>? children})
      : super(
          PageARouter.name,
          path: 'pagea',
          initialChildren: children,
        );

  static const String name = 'PageARouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class PageBRouter extends _i5.PageRouteInfo<void> {
  const PageBRouter({List<_i5.PageRouteInfo>? children})
      : super(
          PageBRouter.name,
          path: 'pageb',
          initialChildren: children,
        );

  static const String name = 'PageBRouter';
}

/// generated route for
/// [_i3.HomePage]
class RouteA extends _i5.PageRouteInfo<void> {
  const RouteA()
      : super(
          RouteA.name,
          path: '',
        );

  static const String name = 'RouteA';
}

/// generated route for
/// [_i4.SettingsPage]
class RouteB extends _i5.PageRouteInfo<void> {
  const RouteB()
      : super(
          RouteB.name,
          path: '',
        );

  static const String name = 'RouteB';
}
