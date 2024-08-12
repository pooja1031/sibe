// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'universities_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UniversitiesEvent {
  QuerySearchModel get queryModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuerySearchModel queryModel) getUniversities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuerySearchModel queryModel)? getUniversities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuerySearchModel queryModel)? getUniversities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUniversities value) getUniversities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUniversities value)? getUniversities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUniversities value)? getUniversities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UniversitiesEventCopyWith<UniversitiesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversitiesEventCopyWith<$Res> {
  factory $UniversitiesEventCopyWith(
          UniversitiesEvent value, $Res Function(UniversitiesEvent) then) =
      _$UniversitiesEventCopyWithImpl<$Res, UniversitiesEvent>;
  @useResult
  $Res call({QuerySearchModel queryModel});
}

/// @nodoc
class _$UniversitiesEventCopyWithImpl<$Res, $Val extends UniversitiesEvent>
    implements $UniversitiesEventCopyWith<$Res> {
  _$UniversitiesEventCopyWithImpl(this._value, this._then);

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
              as QuerySearchModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUniversitiesImplCopyWith<$Res>
    implements $UniversitiesEventCopyWith<$Res> {
  factory _$$GetUniversitiesImplCopyWith(_$GetUniversitiesImpl value,
          $Res Function(_$GetUniversitiesImpl) then) =
      __$$GetUniversitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QuerySearchModel queryModel});
}

/// @nodoc
class __$$GetUniversitiesImplCopyWithImpl<$Res>
    extends _$UniversitiesEventCopyWithImpl<$Res, _$GetUniversitiesImpl>
    implements _$$GetUniversitiesImplCopyWith<$Res> {
  __$$GetUniversitiesImplCopyWithImpl(
      _$GetUniversitiesImpl _value, $Res Function(_$GetUniversitiesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryModel = null,
  }) {
    return _then(_$GetUniversitiesImpl(
      queryModel: null == queryModel
          ? _value.queryModel
          : queryModel // ignore: cast_nullable_to_non_nullable
              as QuerySearchModel,
    ));
  }
}

/// @nodoc

class _$GetUniversitiesImpl implements GetUniversities {
  const _$GetUniversitiesImpl({required this.queryModel});

  @override
  final QuerySearchModel queryModel;

  @override
  String toString() {
    return 'UniversitiesEvent.getUniversities(queryModel: $queryModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUniversitiesImpl &&
            (identical(other.queryModel, queryModel) ||
                other.queryModel == queryModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queryModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUniversitiesImplCopyWith<_$GetUniversitiesImpl> get copyWith =>
      __$$GetUniversitiesImplCopyWithImpl<_$GetUniversitiesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuerySearchModel queryModel) getUniversities,
  }) {
    return getUniversities(queryModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuerySearchModel queryModel)? getUniversities,
  }) {
    return getUniversities?.call(queryModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuerySearchModel queryModel)? getUniversities,
    required TResult orElse(),
  }) {
    if (getUniversities != null) {
      return getUniversities(queryModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUniversities value) getUniversities,
  }) {
    return getUniversities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUniversities value)? getUniversities,
  }) {
    return getUniversities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUniversities value)? getUniversities,
    required TResult orElse(),
  }) {
    if (getUniversities != null) {
      return getUniversities(this);
    }
    return orElse();
  }
}

abstract class GetUniversities implements UniversitiesEvent {
  const factory GetUniversities({required final QuerySearchModel queryModel}) =
      _$GetUniversitiesImpl;

  @override
  QuerySearchModel get queryModel;
  @override
  @JsonKey(ignore: true)
  _$$GetUniversitiesImplCopyWith<_$GetUniversitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UniversitiesState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Universities? get universities => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UniversitiesStateCopyWith<UniversitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversitiesStateCopyWith<$Res> {
  factory $UniversitiesStateCopyWith(
          UniversitiesState value, $Res Function(UniversitiesState) then) =
      _$UniversitiesStateCopyWithImpl<$Res, UniversitiesState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      Universities? universities});
}

/// @nodoc
class _$UniversitiesStateCopyWithImpl<$Res, $Val extends UniversitiesState>
    implements $UniversitiesStateCopyWith<$Res> {
  _$UniversitiesStateCopyWithImpl(this._value, this._then);

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
    Object? universities = freezed,
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
      universities: freezed == universities
          ? _value.universities
          : universities // ignore: cast_nullable_to_non_nullable
              as Universities?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $UniversitiesStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      Universities? universities});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UniversitiesStateCopyWithImpl<$Res, _$InitialImpl>
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
    Object? universities = freezed,
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
      universities: freezed == universities
          ? _value.universities
          : universities // ignore: cast_nullable_to_non_nullable
              as Universities?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      this.message,
      this.universities});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final Universities? universities;

  @override
  String toString() {
    return 'UniversitiesState(isLoading: $isLoading, hasError: $hasError, message: $message, universities: $universities)';
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
            (identical(other.universities, universities) ||
                other.universities == universities));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, hasError, message, universities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements UniversitiesState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      final String? message,
      final Universities? universities}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  Universities? get universities;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
