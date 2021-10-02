import 'package:auto_route/auto_route.dart';
import 'package:elegion/models/project/project.dart';
import 'package:elegion/ui/router/router.gr.dart';
import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key, required this.project}) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(ProjectScreenRoute(project: project));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(project.title),
      ),
    );
  }
}
