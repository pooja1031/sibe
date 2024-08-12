part of 'parrtime_job_bloc.dart';

@freezed
class ParrtimeJobEvent with _$ParrtimeJobEvent {
  const factory ParrtimeJobEvent.parttimeJob(
      {required QueryModel queryModel}) = ParttimeJobEvents;
}
