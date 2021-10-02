import 'package:auto_route/auto_route.dart';
import 'package:elegion/ui/router/router.gr.dart';
import 'package:flutter/material.dart';

class DebugRouter extends StatelessWidget {
  const DebugRouter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: AppRouter()
          .routeCollection
          .routes
          .map(
            (e) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    AutoRouter.of(context).pushNamed(e.path);
                  },
                  child: Text(e.name)),
            ),
          )
          .toList(),
    );
  }
}
