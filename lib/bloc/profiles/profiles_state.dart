part of 'profiles_bloc.dart';

class ProfilesState extends Equatable {
  const ProfilesState(this.filter);

  final ProfileFilter filter;

  @override
  List<Object> get props => [filter];

  ProfilesState copyWith({
    ProfileFilter? filter,
  }) {
    return ProfilesState(
      filter ?? this.filter,
    );
  }
}

class ProfilesLoading extends ProfilesState {
  const ProfilesLoading(ProfileFilter filter) : super(filter);
}

class ProfilesloadingFailure extends ProfilesState {
  const ProfilesloadingFailure(ProfileFilter filter) : super(filter);
}

class ProfilesLoaded extends ProfilesState {
  const ProfilesLoaded({required this.profiles, required ProfileFilter filter})
      : super(filter);

  final List<Profile> profiles;

  @override
  List<Object> get props => super.props..add(profiles.hashCode);
}
