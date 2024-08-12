part of 'accommodation_bloc.dart';

@freezed
class AccommodationState with _$AccommodationState {
  const factory AccommodationState(
      {required bool isLoading,
      required bool hasError,
      String? message,
      AccommodationModel? accommodationModel}) = _Initial;

  factory AccommodationState.initial() =>
      const AccommodationState(isLoading: false, hasError: false);
}
