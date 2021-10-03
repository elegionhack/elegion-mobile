// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../../models/profile/profile.dart' as _i10;
import '../../models/project/project.dart' as _i11;
import '../screens/event/event.dart' as _i7;
import '../screens/events/events.dart' as _i6;
import '../screens/profile/profile.dart' as _i2;
import '../screens/profiles/profiles.dart' as _i3;
import '../screens/project/project.dart' as _i4;
import '../screens/projects/projects.dart' as _i5;
import 'auth_navigator.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AuthNavigatorRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthNavigator());
    },
    ProfileScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileScreenRouteArgs>(
          orElse: () => const ProfileScreenRouteArgs());
      return _i8.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i2.ProfileScreen(key: args.key, profile: args.profile));
    },
    ProfilesScreenRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i3.ProfilesScreen());
    },
    ProjectScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ProjectScreenRouteArgs>();
      return _i8.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i4.ProjectScreen(key: args.key, project: args.project));
    },
    ProjectsScreenRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i5.ProjectsScreen());
    },
    EventsScreenRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i6.EventsScreen());
    },
    EventScreenRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i7.EventScreen());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(AuthNavigatorRoute.name, path: '/'),
        _i8.RouteConfig(ProfileScreenRoute.name, path: '/profile-screen'),
        _i8.RouteConfig(ProfilesScreenRoute.name, path: '/profiles-screen'),
        _i8.RouteConfig(ProjectScreenRoute.name, path: '/project-screen'),
        _i8.RouteConfig(ProjectsScreenRoute.name, path: '/projects-screen'),
        _i8.RouteConfig(EventsScreenRoute.name, path: '/events-screen'),
        _i8.RouteConfig(EventScreenRoute.name, path: '/event-screen')
      ];
}

/// generated route for [_i1.AuthNavigator]
class AuthNavigatorRoute extends _i8.PageRouteInfo<void> {
  const AuthNavigatorRoute() : super(name, path: '/');

  static const String name = 'AuthNavigatorRoute';
}

/// generated route for [_i2.ProfileScreen]
class ProfileScreenRoute extends _i8.PageRouteInfo<ProfileScreenRouteArgs> {
  ProfileScreenRoute({_i9.Key? key, _i10.Profile? profile})
      : super(name,
            path: '/profile-screen',
            args: ProfileScreenRouteArgs(key: key, profile: profile));

  static const String name = 'ProfileScreenRoute';
}

class ProfileScreenRouteArgs {
  const ProfileScreenRouteArgs({this.key, this.profile});

  final _i9.Key? key;

  final _i10.Profile? profile;
}

/// generated route for [_i3.ProfilesScreen]
class ProfilesScreenRoute extends _i8.PageRouteInfo<void> {
  const ProfilesScreenRoute() : super(name, path: '/profiles-screen');

  static const String name = 'ProfilesScreenRoute';
}

/// generated route for [_i4.ProjectScreen]
class ProjectScreenRoute extends _i8.PageRouteInfo<ProjectScreenRouteArgs> {
  ProjectScreenRoute({_i9.Key? key, required _i11.Project project})
      : super(name,
            path: '/project-screen',
            args: ProjectScreenRouteArgs(key: key, project: project));

  static const String name = 'ProjectScreenRoute';
}

class ProjectScreenRouteArgs {
  const ProjectScreenRouteArgs({this.key, required this.project});

  final _i9.Key? key;

  final _i11.Project project;
}

/// generated route for [_i5.ProjectsScreen]
class ProjectsScreenRoute extends _i8.PageRouteInfo<void> {
  const ProjectsScreenRoute() : super(name, path: '/projects-screen');

  static const String name = 'ProjectsScreenRoute';
}

/// generated route for [_i6.EventsScreen]
class EventsScreenRoute extends _i8.PageRouteInfo<void> {
  const EventsScreenRoute() : super(name, path: '/events-screen');

  static const String name = 'EventsScreenRoute';
}

/// generated route for [_i7.EventScreen]
class EventScreenRoute extends _i8.PageRouteInfo<void> {
  const EventScreenRoute() : super(name, path: '/event-screen');

  static const String name = 'EventScreenRoute';
}
