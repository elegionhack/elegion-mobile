part of 'projects_bloc.dart';

class ProjectsState extends Equatable {
  const ProjectsState();

  @override
  List<Object> get props => [];
}

class Projectsloading extends ProjectsState {}

class ProjectsloadingFailure extends ProjectsState {}

class ProjectsLoaded extends ProjectsState {
  const ProjectsLoaded(this.projects);

  final List<Project> projects;

  @override
  List<Object> get props => super.props..add(projects);
}
