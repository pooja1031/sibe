import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:study_in_banglore/domain/models/query_search_model/query_search_model.dart';
import 'package:study_in_banglore/domain/models/universities/universities.model.dart';
import 'package:study_in_banglore/domain/repositories/universities_repository/universities_repository.dart';

part 'universities_event.dart';
part 'universities_state.dart';
part 'universities_bloc.freezed.dart';

@injectable
class UniversitiesBloc extends Bloc<UniversitiesEvent, UniversitiesState> {
  final UniversitiesRepository repository;
  UniversitiesBloc(this.repository) : super(UniversitiesState.initial()) {
    on<GetUniversities>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false));
      final result =
          await repository.universities(queryModel: event.queryModel);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false, hasError: true, message: failure.message)),
          (resp) => emit(state.copyWith(
              isLoading: false,
              hasError: false,
              universities: resp,
              message: resp.message)));
    });
  }
}
