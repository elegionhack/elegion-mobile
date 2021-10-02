import 'package:bloc/bloc.dart';
import 'package:elegion/models/event/event.dart';
import 'package:elegion/repositories/events/api_events_repository/api_events_repository.dart';
import 'package:equatable/equatable.dart';

part 'events_event.dart';
part 'events_state.dart';

class EventsBloc extends Bloc<EventsEvent, EventsState> {
  EventsBloc(this.eventsRepository) : super(EventsLoading());

  final ApiEventsRepository eventsRepository;

  @override
  Stream<EventsState> mapEventToState(EventsEvent event) async* {
    if (event is LoadEvents) {
      yield* _mapLoadEventsToState(event);
    }
  }

  Stream<EventsState> _mapLoadEventsToState(LoadEvents event) async* {
    yield EventsLoading();
    try {
      final events = await eventsRepository.getAll();
      yield EventsLoaded(events);
    } catch (e) {
      yield EventsLoadingFailure();
    }
  }
}
