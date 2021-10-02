import 'package:auto_route/auto_route.dart';
import 'package:elegion/bloc/auth/auth_bloc.dart';
import 'package:elegion/ui/router/router.gr.dart';
import 'package:elegion/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ElegionApp extends StatefulWidget {
  ElegionApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  State<ElegionApp> createState() => _ElegionAppState();
}

class _ElegionAppState extends State<ElegionApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (_) => AuthBloc(),
        )
      ],
      child: MaterialApp.router(
        title: 'Elegion',
        theme: lightTheme,
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
      ),
    );
  }
}
