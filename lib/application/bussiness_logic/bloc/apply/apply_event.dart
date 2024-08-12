part of 'apply_bloc.dart';

@freezed
class ApplyEvent with _$ApplyEvent {
  const factory ApplyEvent.apply({required ApplyModel applyModel}) =
      ApplyEvents;
}
