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
      appBar: AppBar(
        title: const Text(
          'Проекты',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Row(
          //   children: [
          //     const Padding(
          //       padding: EdgeInsets.only(left: 10),
          //       child: Text(
          //         'Сортировать по',
          //         style: TextStyle(
          //           fontSize: 13,
          //           fontWeight: FontWeight.w300,
          //         ),
          //       ),
          //     ),
          //     // TextButton(
          //     //     onPressed: () {},
          //     //     child: Row(
          //     //       children: [
          //     //         Text(
          //     //           'крутоте',
          //     //           style: TextStyle(color: Theme.of(context).primaryColor),
          //     //         ),
          //     //         Icon(
          //     //           Icons.keyboard_arrow_down,
          //     //           color: Theme.of(context).primaryColor,
          //     //         )
          //     //       ],
          //     //     )),
          //   ],
          // ),
          Flexible(
            child: BlocBuilder<ProjectsBloc, ProjectsState>(
              builder: (context, state) {
                if (state is ProjectsLoaded) {
                  return ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.only(top: 10),
                    itemCount: state.projects.length,
                    itemBuilder: (ctx, i) {
                      return ProjectCard(
                        project: state.projects[i],
                      );
                    },
                  );
                }
                return const Center(child: CircularProgressIndicator());
              },
            ),
          ),
        ],
      ),
    );
  }
}
