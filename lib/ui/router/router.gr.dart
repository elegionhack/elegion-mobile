// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import 'auth_navigator.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    AuthNavigatorRoute.name: (routeData) {
      return _i2.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthNavigator());
    }
  };

  @override
  List<_i2.RouteConfig> get routes =>
      [_i2.RouteConfig(AuthNavigatorRoute.name, path: '/')];
}

/// generated route for [_i1.AuthNavigator]
class AuthNavigatorRoute extends _i2.PageRouteInfo<void> {
  const AuthNavigatorRoute() : super(name, path: '/');

  static const String name = 'AuthNavigatorRoute';
}
