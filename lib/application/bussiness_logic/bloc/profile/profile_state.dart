part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState(
      {required bool isLoading,
      required bool hasError,
      String? message,
      ProfileModel? profileModel}) = _Initial;

  factory ProfileState.initial() =>
      ProfileState(isLoading: false, hasError: false);
}
