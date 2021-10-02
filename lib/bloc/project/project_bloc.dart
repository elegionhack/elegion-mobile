import 'package:bloc/bloc.dart';
import 'package:elegion/models/project/project.dart';
import 'package:elegion/repositories/projects/api_projects_repository/api_projects_repository.dart';
import 'package:equatable/equatable.dart';

part 'project_event.dart';
part 'project_state.dart';

class ProjectBloc extends Bloc<ProjectEvent, ProjectState> {
  ProjectBloc(this.projectsRepository) : super(Projectloading());

  final ApiProjectsRepository projectsRepository;

  @override
  Stream<ProjectState> mapEventToState(ProjectEvent event) async* {
    if (event is LoadProject) {
      yield* _mapLoadProjectsToState(event);
    }
  }

  Stream<ProjectState> _mapLoadProjectsToState(LoadProject event) async* {
    yield Projectloading();
    try {
      final project = await projectsRepository.get(event.id);
      yield ProjectLoaded(project);
    } catch (e) {
      yield ProjectLoadingFailure();
    }
  }
}
