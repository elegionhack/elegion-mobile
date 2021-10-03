part of 'profiles_bloc.dart';

class ProfilesEvent extends Equatable {
  const ProfilesEvent();

  @override
  List<Object> get props => [];
}

class LoadProfiles extends ProfilesEvent {}

class UpdateProfilesfilter extends ProfilesEvent {
  const UpdateProfilesfilter(this.filter);
  final ProfileFilter filter;

  @override
  List<Object> get props => super.props..addAll([filter]);
}
