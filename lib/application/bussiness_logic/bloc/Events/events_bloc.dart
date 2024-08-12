import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:study_in_banglore/domain/models/events_model/events_model.dart';
import 'package:study_in_banglore/domain/models/query_model/query_model.dart';
import 'package:study_in_banglore/domain/repositories/events_repository/event_repository.dart';

part 'events_event.dart';
part 'events_state.dart';
part 'events_bloc.freezed.dart';

@injectable
class EventsBloc extends Bloc<EventsEvent, EventsState> {
  final EventRepository repository;
  EventsBloc(this.repository) : super(EventsState.initial()) {
    on<GetEvents>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await repository.events(queryModel: event.queryModel);
      result.fold(
        (failure) => emit(state.copyWith(
            isLoading: false, hasError: true, message: failure.message)),
        (resp) => emit(state.copyWith(
            isLoading: false,
            hasError: false,
            message: resp.message,
            eventsModel: resp)),
      );
    });
  }
}
