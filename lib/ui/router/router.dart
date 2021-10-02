import 'package:auto_route/auto_route.dart';
import 'package:elegion/ui/router/auth_navigator.dart';
import 'package:elegion/ui/screens/events/events.dart';
import 'package:elegion/ui/screens/profile/profile.dart';
import 'package:elegion/ui/screens/profiles/profiles.dart';
import 'package:elegion/ui/screens/project/project.dart';
import 'package:elegion/ui/screens/projects/projects.dart';

// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
// @MaterialAutoRouter
@CupertinoAutoRouter(
  replaceInRouteName: '',
  routes: <AutoRoute>[
    AutoRoute(page: AuthNavigator, initial: true),
    AutoRoute(page: ProfileScreen),
    AutoRoute(page: ProfilesScreen),
    AutoRoute(page: ProjectScreen),
    AutoRoute(page: ProjectsScreen),
    AutoRoute(page: EventsScreen)
  ],
)
class $AppRouter {}
