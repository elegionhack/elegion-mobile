import 'package:bloc/bloc.dart';
import 'package:elegion/models/profile/profile.dart';
import 'package:elegion/repositories/profiles/repository.dart';
import 'package:equatable/equatable.dart';

part 'profiles_event.dart';
part 'profiles_state.dart';

class ProfilesBloc extends Bloc<ProfilesEvent, ProfilesState> {
  ProfilesBloc(this.profilesRepository) : super(ProfilesLoading());

  final ApiProfilesRepository profilesRepository;

  @override
  Stream<ProfilesState> mapEventToState(ProfilesEvent event) async* {
    if (event is LoadProfiles) {
      yield* _mapLoadProfilesToState(event);
    }
  }

  Stream<ProfilesState> _mapLoadProfilesToState(LoadProfiles event) async* {
    yield ProfilesLoading();
    try {
      final projects = await profilesRepository.getAll();
      yield ProfilesLoaded(projects);
    } catch (e) {
      yield ProfilesloadingFailure();
    }
  }
}
