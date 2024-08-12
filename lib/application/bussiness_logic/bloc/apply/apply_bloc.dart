import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:study_in_banglore/domain/models/apply_model/apply_model.dart';
import 'package:study_in_banglore/domain/repositories/apply_repository/apply_repository.dart';

part 'apply_event.dart';
part 'apply_state.dart';
part 'apply_bloc.freezed.dart';

@injectable
class ApplyBloc extends Bloc<ApplyEvent, ApplyState> {
  final ApplyRepository repository;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> applyKey = GlobalKey<FormState>();
  ApplyBloc(this.repository) : super(ApplyState.initial()) {
    on<ApplyEvents>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await repository.apply(applyModel: event.applyModel);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: failure.message,
              isDone: false)), (resp) {
        emit(state.copyWith(
            isLoading: false,
            hasError: false,
            message: resp.message,
            isDone: true));
        nameController.clear();
        phoneController.clear();
      });
    });
  }
}
