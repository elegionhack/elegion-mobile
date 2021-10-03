import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:elegion/bloc/events/events_bloc.dart';
import 'package:elegion/models/event/event.dart';
import 'package:elegion/ui/router/router.gr.dart';
import 'package:elegion/ui/widgets/events/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: 120,
          child: Image.asset(
            'assets/images/elogo.png',
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () => _openProfile(context),
              icon: const Icon(
                Icons.account_circle_outlined,
                size: 35,
              ),
            ),
          ),
        ],
      ),
      body: BlocBuilder<EventsBloc, EventsState>(
        builder: (context, state) {
          if (state is EventsLoaded) {
            return Center(
              child: GridView.count(
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
                padding: const EdgeInsets.all(10.0),
                crossAxisCount: 2,
                children: List.generate(
                  state.events.length,
                  (i) => EventCard(
                    event: state.events[i],
                  ),
                ),
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  void _openProfile(BuildContext context) {
    AutoRouter.of(context).push(
      ProfileScreenRoute(),
    );
  }
}
