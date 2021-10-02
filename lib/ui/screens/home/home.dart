import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:elegion/bloc/events/events_bloc.dart';
import 'package:elegion/ui/screens/profiles/profiles.dart';
import 'package:elegion/ui/screens/projects/projects.dart';
import 'package:elegion/ui/widgets/debug_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _slectedIndex = 1;
  final _controller = PageController(initialPage: 1);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          const ProjectsScreen(),
          BlocBuilder<EventsBloc, EventsState>(
            builder: (context, state) {
              if (state is EventsLoaded) {
                return const Center(child: DebugRouter());
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
          const ProfilesScreen(),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(
        iconSize: 30.0,
        scaleFactor: 0.1,
        selectedColor: theme.primaryColor,
        strokeColor: theme.primaryColor,
        unSelectedColor: Colors.grey,
        backgroundColor: Colors.white,
        items: [
          CustomNavigationBarItem(
            icon: const Icon(Icons.architecture_rounded),
            title: Text(
              'Проекты',
              style: _style(0, theme),
            ),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Icons.home_filled),
            title: Text(
              'Главная',
              style: _style(1, theme),
            ),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Icons.people_alt),
            title: Text(
              'Работники',
              style: _style(2, theme),
            ),
          ),
        ],
        currentIndex: _slectedIndex,
        onTap: (i) {
          _controller.jumpToPage(i);
          setState(() => _slectedIndex = i);
        },
      ),
    );
  }

  TextStyle _style(int index, ThemeData theme) {
    return TextStyle(
      color: index == _slectedIndex ? theme.primaryColor : theme.hintColor,
      fontSize: 12,
    );
  }
}
