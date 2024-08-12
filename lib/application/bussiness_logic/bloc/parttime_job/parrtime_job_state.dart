part of 'parrtime_job_bloc.dart';

@freezed
class ParrtimeJobState with _$ParrtimeJobState {
  const factory ParrtimeJobState(
      {required bool isLoading,
      required bool hasError,
      String? message,
      ParttimeJobModel? parttimeJob}) = _Initial;

  factory ParrtimeJobState.initial() =>
      ParrtimeJobState(isLoading: false, hasError: false);
}
