import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:study_in_banglore/domain/models/colleges/apply_college/apply_college.dart';
import 'package:study_in_banglore/domain/models/colleges/apply_college/data/data.dart';
import 'package:study_in_banglore/domain/models/colleges/college_details/college_details.dart';
import 'package:study_in_banglore/domain/models/colleges/colleges.model.dart';
import 'package:study_in_banglore/domain/models/colleges/college_details/college_query_model.dart';
import 'package:study_in_banglore/domain/models/colleges/query_college_model.dart';
import 'package:study_in_banglore/domain/repositories/colleges_repository/colleges_repository.dart';

part 'colleges_event.dart';
part 'colleges_state.dart';
part 'colleges_bloc.freezed.dart';

@injectable
class CollegesBloc extends Bloc<CollegesEvent, CollegesState> {
  final CollegesRepository repository;
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController phoneNumController = TextEditingController();
  final TextEditingController courrseNameController = TextEditingController();
  final TextEditingController collegeNameController = TextEditingController();
  final GlobalKey<FormState> collegeKey = GlobalKey<FormState>();
  CollegesBloc(this.repository) : super(CollegesState.initial()) {
    on<GetColleges>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await repository.getCollege(
          queryCollegeModel: event.queryCollegeModel);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false, hasError: true, message: failure.message)),
          (resp) => emit(state.copyWith(
              hasError: false,
              isLoading: false,
              message: resp.message,
              colleges: resp)));
    });
    on<CollegesDetailsEvent>(((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result =
          await repository.getCollegesDetails(queryModel: event.queryModel);
      result.fold(
          (l) => emit(state.copyWith(
              isLoading: false, hasError: true, message: l.message)),
          (resp) => emit(state.copyWith(
              isLoading: false,
              hasError: false,
              message: resp.message,
              collegesDetails: resp)));
    }));
    on<ApplyCollegeEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result =
          await repository.applyCollege(queryApplyModel: event.queryApplyModel);
      result.fold(
          (l) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: l.message,
              isDone: false)),
          (resp) => emit(state.copyWith(
              isLoading: false,
              hasError: false,
              isDone: true,
              message: resp.message,
              applyCollege: resp)));
    });
   on<PlaceCollege>(_onPlaceCollege);
    _loadInitialPlace();
  }

  Future<void> _loadInitialPlace() async {
    final prefs = await SharedPreferences.getInstance();
    final savedPlace = prefs.getString('selected_place');
    if (savedPlace != null) {
      add(PlaceCollege(place: savedPlace));
    }
  }

  Future<void> _onPlaceCollege(PlaceCollege event, Emitter<CollegesState> emit) async {
    emit(state.copyWith(placeName: event.place));
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('selected_place', event.place);
    add(CollegesEvent.getColleges(
        queryCollegeModel: QueryCollegeModel(location: event.place)));
  }

    
  }


