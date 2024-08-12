part of 'events_bloc.dart';

@freezed
class EventsState with _$EventsState {
  const factory EventsState(
      {required bool isLoading,
      required bool hasError,
      String? message,
      EventsModel? eventsModel}) = _Initial;

  factory EventsState.initial() =>
      const EventsState(isLoading: false, hasError: false);
}
