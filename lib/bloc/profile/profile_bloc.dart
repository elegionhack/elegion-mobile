import 'package:bloc/bloc.dart';
import 'package:elegion/models/profile/profile.dart';
import 'package:elegion/repositories/profiles/repository.dart';
import 'package:equatable/equatable.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this.profilesRepository) : super(ProfileLoading());

  final ApiProfilesRepository profilesRepository;

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    if (event is LoadProfile) {
      yield* _mapLoadProfileToState(event);
    }
  }

  Stream<ProfileState> _mapLoadProfileToState(LoadProfile event) async* {
    yield ProfileLoading();
    try {
      final profile = (await profilesRepository.getAll()).first;
      yield ProfileLoaded(profile);
    } catch (e) {
      yield ProfileloadingFailure();
    }
  }
}
