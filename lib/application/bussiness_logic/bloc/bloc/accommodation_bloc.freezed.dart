// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accommodation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccommodationEvent {
  QueryAccommodation get queryModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QueryAccommodation queryModel) getAccommodation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QueryAccommodation queryModel)? getAccommodation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueryAccommodation queryModel)? getAccommodation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAccommodation value) getAccommodation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAccommodation value)? getAccommodation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAccommodation value)? getAccommodation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccommodationEventCopyWith<AccommodationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccommodationEventCopyWith<$Res> {
  factory $AccommodationEventCopyWith(
          AccommodationEvent value, $Res Function(AccommodationEvent) then) =
      _$AccommodationEventCopyWithImpl<$Res, AccommodationEvent>;
  @useResult
  $Res call({QueryAccommodation queryModel});
}

/// @nodoc
class _$AccommodationEventCopyWithImpl<$Res, $Val extends AccommodationEvent>
    implements $AccommodationEventCopyWith<$Res> {
  _$AccommodationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryModel = null,
  }) {
    return _then(_value.copyWith(
      queryModel: null == queryModel
          ? _value.queryModel
          : queryModel // ignore: cast_nullable_to_non_nullable
              as QueryAccommodation,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAccommodationImplCopyWith<$Res>
    implements $AccommodationEventCopyWith<$Res> {
  factory _$$GetAccommodationImplCopyWith(_$GetAccommodationImpl value,
          $Res Function(_$GetAccommodationImpl) then) =
      __$$GetAccommodationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QueryAccommodation queryModel});
}

/// @nodoc
class __$$GetAccommodationImplCopyWithImpl<$Res>
    extends _$AccommodationEventCopyWithImpl<$Res, _$GetAccommodationImpl>
    implements _$$GetAccommodationImplCopyWith<$Res> {
  __$$GetAccommodationImplCopyWithImpl(_$GetAccommodationImpl _value,
      $Res Function(_$GetAccommodationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryModel = null,
  }) {
    return _then(_$GetAccommodationImpl(
      queryModel: null == queryModel
          ? _value.queryModel
          : queryModel // ignore: cast_nullable_to_non_nullable
              as QueryAccommodation,
    ));
  }
}

/// @nodoc

class _$GetAccommodationImpl implements GetAccommodation {
  const _$GetAccommodationImpl({required this.queryModel});

  @override
  final QueryAccommodation queryModel;

  @override
  String toString() {
    return 'AccommodationEvent.getAccommodation(queryModel: $queryModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAccommodationImpl &&
            (identical(other.queryModel, queryModel) ||
                other.queryModel == queryModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queryModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAccommodationImplCopyWith<_$GetAccommodationImpl> get copyWith =>
      __$$GetAccommodationImplCopyWithImpl<_$GetAccommodationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QueryAccommodation queryModel) getAccommodation,
  }) {
    return getAccommodation(queryModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QueryAccommodation queryModel)? getAccommodation,
  }) {
    return getAccommodation?.call(queryModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueryAccommodation queryModel)? getAccommodation,
    required TResult orElse(),
  }) {
    if (getAccommodation != null) {
      return getAccommodation(queryModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAccommodation value) getAccommodation,
  }) {
    return getAccommodation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAccommodation value)? getAccommodation,
  }) {
    return getAccommodation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAccommodation value)? getAccommodation,
    required TResult orElse(),
  }) {
    if (getAccommodation != null) {
      return getAccommodation(this);
    }
    return orElse();
  }
}

abstract class GetAccommodation implements AccommodationEvent {
  const factory GetAccommodation(
      {required final QueryAccommodation queryModel}) = _$GetAccommodationImpl;

  @override
  QueryAccommodation get queryModel;
  @override
  @JsonKey(ignore: true)
  _$$GetAccommodationImplCopyWith<_$GetAccommodationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccommodationState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  AccommodationModel? get accommodationModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccommodationStateCopyWith<AccommodationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccommodationStateCopyWith<$Res> {
  factory $AccommodationStateCopyWith(
          AccommodationState value, $Res Function(AccommodationState) then) =
      _$AccommodationStateCopyWithImpl<$Res, AccommodationState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      AccommodationModel? accommodationModel});
}

/// @nodoc
class _$AccommodationStateCopyWithImpl<$Res, $Val extends AccommodationState>
    implements $AccommodationStateCopyWith<$Res> {
  _$AccommodationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? message = freezed,
    Object? accommodationModel = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      accommodationModel: freezed == accommodationModel
          ? _value.accommodationModel
          : accommodationModel // ignore: cast_nullable_to_non_nullable
              as AccommodationModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AccommodationStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      AccommodationModel? accommodationModel});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AccommodationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? message = freezed,
    Object? accommodationModel = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      accommodationModel: freezed == accommodationModel
          ? _value.accommodationModel
          : accommodationModel // ignore: cast_nullable_to_non_nullable
              as AccommodationModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      this.message,
      this.accommodationModel});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final AccommodationModel? accommodationModel;

  @override
  String toString() {
    return 'AccommodationState(isLoading: $isLoading, hasError: $hasError, message: $message, accommodationModel: $accommodationModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.accommodationModel, accommodationModel) ||
                other.accommodationModel == accommodationModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, hasError, message, accommodationModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements AccommodationState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      final String? message,
      final AccommodationModel? accommodationModel}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  AccommodationModel? get accommodationModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
