part of 'apply_bloc.dart';

@freezed
class ApplyState with _$ApplyState {
  const factory ApplyState({
    required bool isLoading,
    required bool hasError,
    required bool isDone,
    String? message,
  }) = _Initial;

  factory ApplyState.initial() =>
      const ApplyState(isLoading: false, hasError: false, isDone: false);
}
