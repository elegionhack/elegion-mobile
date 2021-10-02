// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../screens/profile/profile.dart' as _i2;
import '../screens/profiles/profiles.dart' as _i3;
import '../screens/project/project.dart' as _i4;
import '../screens/projects/projects.dart' as _i5;
import 'auth_navigator.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AuthNavigatorRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthNavigator());
    },
    ProfileScreenRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i2.ProfileScreen());
    },
    ProfilesScreenRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i3.ProfilesScreen());
    },
    ProjectScreenRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i4.ProjectScreen());
    },
    ProjectsScreenRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i5.ProjectsScreen());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(AuthNavigatorRoute.name, path: '/'),
        _i6.RouteConfig(ProfileScreenRoute.name, path: '/profile-screen'),
        _i6.RouteConfig(ProfilesScreenRoute.name, path: '/profiles-screen'),
        _i6.RouteConfig(ProjectScreenRoute.name, path: '/project-screen'),
        _i6.RouteConfig(ProjectsScreenRoute.name, path: '/projects-screen')
      ];
}

/// generated route for [_i1.AuthNavigator]
class AuthNavigatorRoute extends _i6.PageRouteInfo<void> {
  const AuthNavigatorRoute() : super(name, path: '/');

  static const String name = 'AuthNavigatorRoute';
}

/// generated route for [_i2.ProfileScreen]
class ProfileScreenRoute extends _i6.PageRouteInfo<void> {
  const ProfileScreenRoute() : super(name, path: '/profile-screen');

  static const String name = 'ProfileScreenRoute';
}

/// generated route for [_i3.ProfilesScreen]
class ProfilesScreenRoute extends _i6.PageRouteInfo<void> {
  const ProfilesScreenRoute() : super(name, path: '/profiles-screen');

  static const String name = 'ProfilesScreenRoute';
}

/// generated route for [_i4.ProjectScreen]
class ProjectScreenRoute extends _i6.PageRouteInfo<void> {
  const ProjectScreenRoute() : super(name, path: '/project-screen');

  static const String name = 'ProjectScreenRoute';
}

/// generated route for [_i5.ProjectsScreen]
class ProjectsScreenRoute extends _i6.PageRouteInfo<void> {
  const ProjectsScreenRoute() : super(name, path: '/projects-screen');

  static const String name = 'ProjectsScreenRoute';
}
