part of 'events_bloc.dart';

class EventsState extends Equatable {
  const EventsState();

  @override
  List<Object> get props => [];
}

class EventsLoading extends EventsState {}

class EventsLoadingFailure extends EventsState {}

class EventsLoaded extends EventsState {
  const EventsLoaded(this.events);

  final List<Event> events;

  @override
  List<Object> get props => super.props..add(events.hashCode);
}
