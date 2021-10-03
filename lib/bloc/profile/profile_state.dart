part of 'profile_bloc.dart';

class ProfileState extends Equatable {
  ProfileState();

  @override
  List<Object> get props => [];
}

class ProfileLoading extends ProfileState {
  ProfileLoading() : super();
}

class ProfileloadingFailure extends ProfileState {
  ProfileloadingFailure() : super();
}

class ProfileLoaded extends ProfileState {
  ProfileLoaded({required this.profile}) : super();

  final Profile profile;

  @override
  List<Object> get props => super.props..add(profile);
}
