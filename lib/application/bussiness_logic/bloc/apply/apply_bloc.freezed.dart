// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apply_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApplyEvent {
  ApplyModel get applyModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApplyModel applyModel) apply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApplyModel applyModel)? apply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApplyModel applyModel)? apply,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplyEvents value) apply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplyEvents value)? apply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplyEvents value)? apply,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplyEventCopyWith<ApplyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplyEventCopyWith<$Res> {
  factory $ApplyEventCopyWith(
          ApplyEvent value, $Res Function(ApplyEvent) then) =
      _$ApplyEventCopyWithImpl<$Res, ApplyEvent>;
  @useResult
  $Res call({ApplyModel applyModel});
}

/// @nodoc
class _$ApplyEventCopyWithImpl<$Res, $Val extends ApplyEvent>
    implements $ApplyEventCopyWith<$Res> {
  _$ApplyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applyModel = null,
  }) {
    return _then(_value.copyWith(
      applyModel: null == applyModel
          ? _value.applyModel
          : applyModel // ignore: cast_nullable_to_non_nullable
              as ApplyModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApplyEventsImplCopyWith<$Res>
    implements $ApplyEventCopyWith<$Res> {
  factory _$$ApplyEventsImplCopyWith(
          _$ApplyEventsImpl value, $Res Function(_$ApplyEventsImpl) then) =
      __$$ApplyEventsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApplyModel applyModel});
}

/// @nodoc
class __$$ApplyEventsImplCopyWithImpl<$Res>
    extends _$ApplyEventCopyWithImpl<$Res, _$ApplyEventsImpl>
    implements _$$ApplyEventsImplCopyWith<$Res> {
  __$$ApplyEventsImplCopyWithImpl(
      _$ApplyEventsImpl _value, $Res Function(_$ApplyEventsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applyModel = null,
  }) {
    return _then(_$ApplyEventsImpl(
      applyModel: null == applyModel
          ? _value.applyModel
          : applyModel // ignore: cast_nullable_to_non_nullable
              as ApplyModel,
    ));
  }
}

/// @nodoc

class _$ApplyEventsImpl implements ApplyEvents {
  const _$ApplyEventsImpl({required this.applyModel});

  @override
  final ApplyModel applyModel;

  @override
  String toString() {
    return 'ApplyEvent.apply(applyModel: $applyModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyEventsImpl &&
            (identical(other.applyModel, applyModel) ||
                other.applyModel == applyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, applyModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplyEventsImplCopyWith<_$ApplyEventsImpl> get copyWith =>
      __$$ApplyEventsImplCopyWithImpl<_$ApplyEventsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApplyModel applyModel) apply,
  }) {
    return apply(applyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApplyModel applyModel)? apply,
  }) {
    return apply?.call(applyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApplyModel applyModel)? apply,
    required TResult orElse(),
  }) {
    if (apply != null) {
      return apply(applyModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplyEvents value) apply,
  }) {
    return apply(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplyEvents value)? apply,
  }) {
    return apply?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplyEvents value)? apply,
    required TResult orElse(),
  }) {
    if (apply != null) {
      return apply(this);
    }
    return orElse();
  }
}

abstract class ApplyEvents implements ApplyEvent {
  const factory ApplyEvents({required final ApplyModel applyModel}) =
      _$ApplyEventsImpl;

  @override
  ApplyModel get applyModel;
  @override
  @JsonKey(ignore: true)
  _$$ApplyEventsImplCopyWith<_$ApplyEventsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ApplyState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplyStateCopyWith<ApplyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplyStateCopyWith<$Res> {
  factory $ApplyStateCopyWith(
          ApplyState value, $Res Function(ApplyState) then) =
      _$ApplyStateCopyWithImpl<$Res, ApplyState>;
  @useResult
  $Res call({bool isLoading, bool hasError, bool isDone, String? message});
}

/// @nodoc
class _$ApplyStateCopyWithImpl<$Res, $Val extends ApplyState>
    implements $ApplyStateCopyWith<$Res> {
  _$ApplyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? isDone = null,
    Object? message = freezed,
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
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ApplyStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool hasError, bool isDone, String? message});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ApplyStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? isDone = null,
    Object? message = freezed,
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
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      required this.isDone,
      this.message});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool isDone;
  @override
  final String? message;

  @override
  String toString() {
    return 'ApplyState(isLoading: $isLoading, hasError: $hasError, isDone: $isDone, message: $message)';
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
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, hasError, isDone, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements ApplyState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      required final bool isDone,
      final String? message}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isDone;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
