part of 'project_bloc.dart';

class ProjectEvent extends Equatable {
  const ProjectEvent();

  @override
  List<Object> get props => [];
}

class LoadProject extends ProjectEvent {
  const LoadProject(this.id);
  final String id;

  @override
  List<Object> get props => super.props..add(id);
}
