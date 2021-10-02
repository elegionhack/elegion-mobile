import 'package:bloc/bloc.dart';
import 'package:elegion/models/project/project.dart';
import 'package:elegion/repositories/projects/api_projects_repository/api_projects_repository.dart';
import 'package:equatable/equatable.dart';

part 'projects_event.dart';
part 'projects_state.dart';

class ProjectsBloc extends Bloc<ProjectsEvent, ProjectsState> {
  ProjectsBloc(this.projectsRepository) : super(Projectsloading());

  final ApiProjectsRepository projectsRepository;

  @override
  Stream<ProjectsState> mapEventToState(ProjectsEvent event) async* {
    if (event is LoadProjects) {
      yield* _mapLoadProjectsToState(event);
    }
  }

  @override
  Stream<ProjectsState> _mapLoadProjectsToState(LoadProjects event) async* {
    yield Projectsloading();
    try {
      final projects = await projectsRepository.getAll();
      yield ProjectsLoaded(projects);
    } catch (e) {
      yield ProjectsloadingFailure();
    }
  }
}
