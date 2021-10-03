import 'package:auto_route/auto_route.dart';
import 'package:elegion/models/event/event.dart';
import 'package:elegion/ui/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    required this.event,
  }) : super(key: key);

  final Event event;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(EventScreenRoute(event: event));
      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(event.imgUrl),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: theme.hintColor.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 5), // changes position of shadow
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.black.withOpacity(0.05),
                  Colors.black.withOpacity(0.7)
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 20.0,
              ),
              child: Text(
                event.title,
                style: TextStyle(
                  color: theme.canvasColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Chip(
                label: Text(
                  '${event.bonus}',
                  style: theme.textTheme.bodyText1!.copyWith(
                    color: Colors.white,
                  ),
                ),
                backgroundColor: theme.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
