import 'package:elegion/bloc/events/events_bloc.dart';
import 'package:elegion/ui/widgets/debug_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<EventsBloc, EventsState>(
        builder: (context, state) {
          if (state is EventsLoaded) {
            return const Center(child: DebugRouter());
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
