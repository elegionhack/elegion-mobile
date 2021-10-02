part of 'auth_bloc.dart';

abstract class AuthblocState extends Equatable {
  const AuthblocState();

  @override
  List<Object> get props => [];
}

class Authorized extends AuthblocState {}

class NotAuthorized extends AuthblocState {}
