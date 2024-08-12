import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:study_in_banglore/domain/models/accommodation_model/accommodation_model.dart';
import 'package:study_in_banglore/domain/models/accommodation_model/query_accommodation.dart';
import 'package:study_in_banglore/domain/repositories/accommodation_repository/accomodation_repository.dart';

part 'accommodation_event.dart';
part 'accommodation_state.dart';
part 'accommodation_bloc.freezed.dart';
@injectable
class AccommodationBloc extends Bloc<AccommodationEvent, AccommodationState> {
  final AccomodationRepository repository;
  AccommodationBloc(this.repository) : super(AccommodationState.initial()) {
    on<GetAccommodation>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result =
          await repository.accommodation(queryModel: event.queryModel);
      result.fold(
        (failure) => emit(state.copyWith(
            isLoading: false, hasError: true, message: failure.message)),
        (resp) => emit(state.copyWith(
            isLoading: false,
            hasError: false,
            message: resp.message,
            accommodationModel: resp)),
      );
    });
  }
}
