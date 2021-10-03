part of 'project_bloc.dart';

class ProjectState extends Equatable {
  const ProjectState();

  @override
  List<Object> get props => [];
}

class Projectloading extends ProjectState {}

class ProjectLoadingFailure extends ProjectState {}

class ProjectLoaded extends ProjectState {
  const ProjectLoaded(this.project);

  final Project project;

  @override
  List<Object> get props => super.props..add(project);
}
