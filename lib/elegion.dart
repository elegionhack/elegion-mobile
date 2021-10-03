import 'package:auto_route/auto_route.dart';
import 'package:elegion/bloc/auth/auth_bloc.dart';
import 'package:elegion/bloc/events/events_bloc.dart';
import 'package:elegion/bloc/profile/profile_bloc.dart';
import 'package:elegion/bloc/profiles/profiles_bloc.dart';
import 'package:elegion/bloc/projects/projects_bloc.dart';
import 'package:elegion/repositories/events/repository.dart';
import 'package:elegion/repositories/profiles/repository.dart';
import 'package:elegion/repositories/projects/api_projects_repository/api_projects_repository.dart';
import 'package:elegion/ui/router/router.gr.dart';
import 'package:elegion/ui/theme/theme.dart';
import 'package:elegion/utils/utils.dart';
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
  void initState() {
    final httpFactory = HttpClientFactory(
      apiKey: '',
      apiPath: '',
      baseUrl: 'https://elegion.herokuapp.com',
    );
    G.registerSingleton<HttpClientFactory>(httpFactory);
    G.registerSingleton<ApiProjectsRepository>(
      ApiProjectsRepository(httpFactory),
    );
    G.registerSingleton<ApiProfilesRepository>(
      ApiProfilesRepository(httpFactory),
    );
    G.registerSingleton<ApiEventsRepository>(
      ApiEventsRepository(httpFactory),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (_) => AuthBloc(),
        ),
        BlocProvider<ProjectsBloc>(
          create: (_) => ProjectsBloc(
            G.get<ApiProjectsRepository>(),
          )..add(LoadProjects()),
        ),
        BlocProvider<ProfilesBloc>(
          create: (_) => ProfilesBloc(
            G.get<ApiProfilesRepository>(),
          )..add(LoadProfiles()),
        ),
        BlocProvider<EventsBloc>(
          create: (_) => EventsBloc(
            G.get<ApiEventsRepository>(),
          )..add(LoadEvents()),
        ),
        BlocProvider<ProfileBloc>(
          create: (_) => ProfileBloc(
            G.get<ApiProfilesRepository>(),
          ),
        ),
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
