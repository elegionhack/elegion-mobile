import 'package:auto_route/auto_route.dart';
import 'package:elegion/ui/router/router.gr.dart';
import 'package:flutter/material.dart';

class ElegionApp extends StatefulWidget {
  ElegionApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  State<ElegionApp> createState() => _ElegionAppState();
}

class _ElegionAppState extends State<ElegionApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Elegion',
      routeInformationParser: widget._appRouter.defaultRouteParser(),
      builder: (_, router) {
        return router!;
      },
      routerDelegate: AutoRouterDelegate(
        widget._appRouter,
        navigatorObservers: () => [
          AutoRouteObserver(),
        ],
      ),
    );
  }
}
