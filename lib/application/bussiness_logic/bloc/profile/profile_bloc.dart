import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:study_in_banglore/domain/models/profile_model/profile_model.dart';
import 'package:study_in_banglore/domain/repositories/profile_repository/profile_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository repository;
  ProfileBloc(this.repository) : super(ProfileState.initial()) {
    on<GetProfile>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false));
      final result = await repository.profile();
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false, hasError: true, message: failure.message)),
          (resp) => emit(state.copyWith(
              isLoading: false,
              hasError: false,
              message: resp.message,
              profileModel: resp)));
    });
  }
}
