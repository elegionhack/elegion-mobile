import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthBlocEvent, AuthblocState> {
  AuthBloc() : super(NotAuthorized());

  @override
  Stream<AuthblocState> mapEventToState(AuthBlocEvent event) async* {
    if (event is SignIn) {
      _mapSignInToState(event);
    }
  }

  Stream<AuthblocState> _mapSignInToState(AuthBlocEvent event) async* {
    yield Authorized();
  }
}
