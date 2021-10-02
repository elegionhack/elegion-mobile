import 'package:auto_route/auto_route.dart';
import 'package:elegion/ui/router/auth_navigator.dart';

// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
// @MaterialAutoRouter
@CupertinoAutoRouter(
  replaceInRouteName: '',
  routes: <AutoRoute>[
    AutoRoute(page: AuthNavigator, initial: true),
  ],
)
class $AppRouter {}
