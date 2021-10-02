part of 'profiles_bloc.dart';

class ProfilesState extends Equatable {
  const ProfilesState();

  @override
  List<Object> get props => [];
}

class ProfilesLoading extends ProfilesState {}

class ProfilesloadingFailure extends ProfilesState {}

class ProfilesLoaded extends ProfilesState {
  const ProfilesLoaded(this.profiles);

  final List<Profile> profiles;

  @override
  List<Object> get props => super.props..add(profiles.hashCode);
}
