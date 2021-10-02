import 'package:elegion/bloc/project/project_bloc.dart';
import 'package:elegion/models/project/project.dart';
import 'package:flutter/material.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('$project'),
      ),
    );
  }
}
