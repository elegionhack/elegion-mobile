part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class Authorized extends AuthState {}

class NotAuthorized extends AuthState {}
