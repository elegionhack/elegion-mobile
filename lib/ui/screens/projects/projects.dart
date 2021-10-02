import 'package:elegion/bloc/projects/projects_bloc.dart';
import 'package:elegion/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProjectsBloc, ProjectsState>(
        builder: (context, state) {
          if (state is ProjectsLoaded) {
            return ListView.builder(
              itemCount: state.projects.length,
              itemBuilder: (ctx, i) {
                return const ProjectCard();
              },
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
