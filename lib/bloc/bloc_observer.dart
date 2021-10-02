import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    debugPrint('[BLOC] Event recive in $bloc event: $event');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);

    debugPrint('[BLOC] Transition in $bloc with event ${transition.event}');
  }

  @override
  void onError(BlocBase bloc, Object e, StackTrace st) {
    super.onError(bloc, e, st);
    debugPrint('[BLOC] Error in $bloc error: $e, stack: $st');
  }
}
