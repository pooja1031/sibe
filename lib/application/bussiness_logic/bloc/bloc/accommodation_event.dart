part of 'accommodation_bloc.dart';

@freezed
class AccommodationEvent with _$AccommodationEvent {
  const factory AccommodationEvent.getAccommodation({required QueryAccommodation queryModel}) = GetAccommodation;
}

