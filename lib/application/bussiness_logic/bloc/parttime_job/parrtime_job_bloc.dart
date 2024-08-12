import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:study_in_banglore/domain/models/parttime_job_model/parttime_job_model.dart';
import 'package:study_in_banglore/domain/models/query_model/query_model.dart';
import 'package:study_in_banglore/domain/repositories/parttime_job_repostory/parttime_job_repository.dart';

part 'parrtime_job_event.dart';
part 'parrtime_job_state.dart';
part 'parrtime_job_bloc.freezed.dart';

@injectable
class ParrtimeJobBloc extends Bloc<ParrtimeJobEvent, ParrtimeJobState> {
  final ParttimeJobRepository repository;
  ParrtimeJobBloc(this.repository) : super(ParrtimeJobState.initial()) {
    on<ParrtimeJobEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await repository.partimeJob(queryModel: event.queryModel);
      result.fold(
        (failure) => emit(state.copyWith(
            isLoading: false, message: failure.message, hasError: true)),
        (resp) => emit(state.copyWith(
            isLoading: false,
            hasError: false,
            parttimeJob: resp,
            message: resp.message)),
      );
    });
  }
}
