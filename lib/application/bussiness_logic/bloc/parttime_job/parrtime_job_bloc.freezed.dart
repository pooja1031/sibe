// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parrtime_job_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParrtimeJobEvent {
  QueryModel get queryModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QueryModel queryModel) parttimeJob,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QueryModel queryModel)? parttimeJob,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueryModel queryModel)? parttimeJob,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParttimeJobEvents value) parttimeJob,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParttimeJobEvents value)? parttimeJob,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParttimeJobEvents value)? parttimeJob,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParrtimeJobEventCopyWith<ParrtimeJobEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParrtimeJobEventCopyWith<$Res> {
  factory $ParrtimeJobEventCopyWith(
          ParrtimeJobEvent value, $Res Function(ParrtimeJobEvent) then) =
      _$ParrtimeJobEventCopyWithImpl<$Res, ParrtimeJobEvent>;
  @useResult
  $Res call({QueryModel queryModel});
}

/// @nodoc
class _$ParrtimeJobEventCopyWithImpl<$Res, $Val extends ParrtimeJobEvent>
    implements $ParrtimeJobEventCopyWith<$Res> {
  _$ParrtimeJobEventCopyWithImpl(this._value, this._then);

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
              as QueryModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParttimeJobEventsImplCopyWith<$Res>
    implements $ParrtimeJobEventCopyWith<$Res> {
  factory _$$ParttimeJobEventsImplCopyWith(_$ParttimeJobEventsImpl value,
          $Res Function(_$ParttimeJobEventsImpl) then) =
      __$$ParttimeJobEventsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QueryModel queryModel});
}

/// @nodoc
class __$$ParttimeJobEventsImplCopyWithImpl<$Res>
    extends _$ParrtimeJobEventCopyWithImpl<$Res, _$ParttimeJobEventsImpl>
    implements _$$ParttimeJobEventsImplCopyWith<$Res> {
  __$$ParttimeJobEventsImplCopyWithImpl(_$ParttimeJobEventsImpl _value,
      $Res Function(_$ParttimeJobEventsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryModel = null,
  }) {
    return _then(_$ParttimeJobEventsImpl(
      queryModel: null == queryModel
          ? _value.queryModel
          : queryModel // ignore: cast_nullable_to_non_nullable
              as QueryModel,
    ));
  }
}

/// @nodoc

class _$ParttimeJobEventsImpl implements ParttimeJobEvents {
  const _$ParttimeJobEventsImpl({required this.queryModel});

  @override
  final QueryModel queryModel;

  @override
  String toString() {
    return 'ParrtimeJobEvent.parttimeJob(queryModel: $queryModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParttimeJobEventsImpl &&
            (identical(other.queryModel, queryModel) ||
                other.queryModel == queryModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queryModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParttimeJobEventsImplCopyWith<_$ParttimeJobEventsImpl> get copyWith =>
      __$$ParttimeJobEventsImplCopyWithImpl<_$ParttimeJobEventsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QueryModel queryModel) parttimeJob,
  }) {
    return parttimeJob(queryModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QueryModel queryModel)? parttimeJob,
  }) {
    return parttimeJob?.call(queryModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueryModel queryModel)? parttimeJob,
    required TResult orElse(),
  }) {
    if (parttimeJob != null) {
      return parttimeJob(queryModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParttimeJobEvents value) parttimeJob,
  }) {
    return parttimeJob(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParttimeJobEvents value)? parttimeJob,
  }) {
    return parttimeJob?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParttimeJobEvents value)? parttimeJob,
    required TResult orElse(),
  }) {
    if (parttimeJob != null) {
      return parttimeJob(this);
    }
    return orElse();
  }
}

abstract class ParttimeJobEvents implements ParrtimeJobEvent {
  const factory ParttimeJobEvents({required final QueryModel queryModel}) =
      _$ParttimeJobEventsImpl;

  @override
  QueryModel get queryModel;
  @override
  @JsonKey(ignore: true)
  _$$ParttimeJobEventsImplCopyWith<_$ParttimeJobEventsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ParrtimeJobState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ParttimeJobModel? get parttimeJob => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParrtimeJobStateCopyWith<ParrtimeJobState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParrtimeJobStateCopyWith<$Res> {
  factory $ParrtimeJobStateCopyWith(
          ParrtimeJobState value, $Res Function(ParrtimeJobState) then) =
      _$ParrtimeJobStateCopyWithImpl<$Res, ParrtimeJobState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      ParttimeJobModel? parttimeJob});
}

/// @nodoc
class _$ParrtimeJobStateCopyWithImpl<$Res, $Val extends ParrtimeJobState>
    implements $ParrtimeJobStateCopyWith<$Res> {
  _$ParrtimeJobStateCopyWithImpl(this._value, this._then);

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
    Object? parttimeJob = freezed,
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
      parttimeJob: freezed == parttimeJob
          ? _value.parttimeJob
          : parttimeJob // ignore: cast_nullable_to_non_nullable
              as ParttimeJobModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ParrtimeJobStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      ParttimeJobModel? parttimeJob});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ParrtimeJobStateCopyWithImpl<$Res, _$InitialImpl>
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
    Object? parttimeJob = freezed,
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
      parttimeJob: freezed == parttimeJob
          ? _value.parttimeJob
          : parttimeJob // ignore: cast_nullable_to_non_nullable
              as ParttimeJobModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      this.message,
      this.parttimeJob});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final ParttimeJobModel? parttimeJob;

  @override
  String toString() {
    return 'ParrtimeJobState(isLoading: $isLoading, hasError: $hasError, message: $message, parttimeJob: $parttimeJob)';
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
            (identical(other.parttimeJob, parttimeJob) ||
                other.parttimeJob == parttimeJob));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, hasError, message, parttimeJob);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements ParrtimeJobState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      final String? message,
      final ParttimeJobModel? parttimeJob}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  ParttimeJobModel? get parttimeJob;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
