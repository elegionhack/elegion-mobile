import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(NotAuthorized());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is SignIn) {
      yield* _mapSignInToState(event);
    }
  }

  Stream<AuthState> _mapSignInToState(AuthEvent event) async* {
    yield Authorized();
  }
}
