part of 'profile_bloc.dart';

class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

class ProfileLoading extends ProfileState {}

class ProfileloadingFailure extends ProfileState {}

class ProfileLoaded extends ProfileState {
  const ProfileLoaded(this.profile);

  final Profile profile;

  @override
  List<Object> get props => super.props..add(profile.hashCode);
}
