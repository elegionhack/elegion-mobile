import 'package:bloc/bloc.dart';
import 'package:elegion/bloc/profiles/filter.dart';
import 'package:elegion/models/profile/profile.dart';
import 'package:elegion/repositories/profiles/repository.dart';
import 'package:equatable/equatable.dart';

part 'profiles_event.dart';
part 'profiles_state.dart';

class ProfilesBloc extends Bloc<ProfilesEvent, ProfilesState> {
  ProfilesBloc(this.profilesRepository)
      : super(const ProfilesLoading(ProfileFilter()));

  final ApiProfilesRepository profilesRepository;

  @override
  Stream<ProfilesState> mapEventToState(ProfilesEvent event) async* {
    if (event is LoadProfiles) {
      yield* _mapLoadProfilesToState(event);
    } else if (event is UpdateProfilesfilter) {
      yield* _mapUpdateFilterToState(event);
    }
  }

  Stream<ProfilesState> _mapUpdateFilterToState(
      UpdateProfilesfilter event) async* {
    yield state.copyWith(filter: event.filter);
    add(LoadProfiles());
  }

  Stream<ProfilesState> _mapLoadProfilesToState(LoadProfiles event) async* {
    yield ProfilesLoading(state.filter);
    try {
      final profiles = await profilesRepository.getAll();
      yield ProfilesLoaded(profiles: profiles, filter: state.filter);
    } catch (e) {
      yield ProfilesloadingFailure(state.filter);
    }
  }
}
