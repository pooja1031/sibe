// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'colleges_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CollegesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QueryCollegeModel queryCollegeModel) getColleges,
    required TResult Function(CollegeQueryModel queryModel) collegesDetails,
    required TResult Function(QueryApplyModel queryApplyModel) applyCollege,
    required TResult Function(String place) placesCollege,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QueryCollegeModel queryCollegeModel)? getColleges,
    TResult? Function(CollegeQueryModel queryModel)? collegesDetails,
    TResult? Function(QueryApplyModel queryApplyModel)? applyCollege,
    TResult? Function(String place)? placesCollege,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueryCollegeModel queryCollegeModel)? getColleges,
    TResult Function(CollegeQueryModel queryModel)? collegesDetails,
    TResult Function(QueryApplyModel queryApplyModel)? applyCollege,
    TResult Function(String place)? placesCollege,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetColleges value) getColleges,
    required TResult Function(CollegesDetailsEvent value) collegesDetails,
    required TResult Function(ApplyCollegeEvent value) applyCollege,
    required TResult Function(PlaceCollege value) placesCollege,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetColleges value)? getColleges,
    TResult? Function(CollegesDetailsEvent value)? collegesDetails,
    TResult? Function(ApplyCollegeEvent value)? applyCollege,
    TResult? Function(PlaceCollege value)? placesCollege,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetColleges value)? getColleges,
    TResult Function(CollegesDetailsEvent value)? collegesDetails,
    TResult Function(ApplyCollegeEvent value)? applyCollege,
    TResult Function(PlaceCollege value)? placesCollege,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollegesEventCopyWith<$Res> {
  factory $CollegesEventCopyWith(
          CollegesEvent value, $Res Function(CollegesEvent) then) =
      _$CollegesEventCopyWithImpl<$Res, CollegesEvent>;
}

/// @nodoc
class _$CollegesEventCopyWithImpl<$Res, $Val extends CollegesEvent>
    implements $CollegesEventCopyWith<$Res> {
  _$CollegesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCollegesImplCopyWith<$Res> {
  factory _$$GetCollegesImplCopyWith(
          _$GetCollegesImpl value, $Res Function(_$GetCollegesImpl) then) =
      __$$GetCollegesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QueryCollegeModel queryCollegeModel});
}

/// @nodoc
class __$$GetCollegesImplCopyWithImpl<$Res>
    extends _$CollegesEventCopyWithImpl<$Res, _$GetCollegesImpl>
    implements _$$GetCollegesImplCopyWith<$Res> {
  __$$GetCollegesImplCopyWithImpl(
      _$GetCollegesImpl _value, $Res Function(_$GetCollegesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryCollegeModel = null,
  }) {
    return _then(_$GetCollegesImpl(
      queryCollegeModel: null == queryCollegeModel
          ? _value.queryCollegeModel
          : queryCollegeModel // ignore: cast_nullable_to_non_nullable
              as QueryCollegeModel,
    ));
  }
}

/// @nodoc

class _$GetCollegesImpl implements GetColleges {
  const _$GetCollegesImpl({required this.queryCollegeModel});

  @override
  final QueryCollegeModel queryCollegeModel;

  @override
  String toString() {
    return 'CollegesEvent.getColleges(queryCollegeModel: $queryCollegeModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCollegesImpl &&
            (identical(other.queryCollegeModel, queryCollegeModel) ||
                other.queryCollegeModel == queryCollegeModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queryCollegeModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCollegesImplCopyWith<_$GetCollegesImpl> get copyWith =>
      __$$GetCollegesImplCopyWithImpl<_$GetCollegesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QueryCollegeModel queryCollegeModel) getColleges,
    required TResult Function(CollegeQueryModel queryModel) collegesDetails,
    required TResult Function(QueryApplyModel queryApplyModel) applyCollege,
    required TResult Function(String place) placesCollege,
  }) {
    return getColleges(queryCollegeModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QueryCollegeModel queryCollegeModel)? getColleges,
    TResult? Function(CollegeQueryModel queryModel)? collegesDetails,
    TResult? Function(QueryApplyModel queryApplyModel)? applyCollege,
    TResult? Function(String place)? placesCollege,
  }) {
    return getColleges?.call(queryCollegeModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueryCollegeModel queryCollegeModel)? getColleges,
    TResult Function(CollegeQueryModel queryModel)? collegesDetails,
    TResult Function(QueryApplyModel queryApplyModel)? applyCollege,
    TResult Function(String place)? placesCollege,
    required TResult orElse(),
  }) {
    if (getColleges != null) {
      return getColleges(queryCollegeModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetColleges value) getColleges,
    required TResult Function(CollegesDetailsEvent value) collegesDetails,
    required TResult Function(ApplyCollegeEvent value) applyCollege,
    required TResult Function(PlaceCollege value) placesCollege,
  }) {
    return getColleges(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetColleges value)? getColleges,
    TResult? Function(CollegesDetailsEvent value)? collegesDetails,
    TResult? Function(ApplyCollegeEvent value)? applyCollege,
    TResult? Function(PlaceCollege value)? placesCollege,
  }) {
    return getColleges?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetColleges value)? getColleges,
    TResult Function(CollegesDetailsEvent value)? collegesDetails,
    TResult Function(ApplyCollegeEvent value)? applyCollege,
    TResult Function(PlaceCollege value)? placesCollege,
    required TResult orElse(),
  }) {
    if (getColleges != null) {
      return getColleges(this);
    }
    return orElse();
  }
}

abstract class GetColleges implements CollegesEvent {
  const factory GetColleges(
      {required final QueryCollegeModel queryCollegeModel}) = _$GetCollegesImpl;

  QueryCollegeModel get queryCollegeModel;
  @JsonKey(ignore: true)
  _$$GetCollegesImplCopyWith<_$GetCollegesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CollegesDetailsEventImplCopyWith<$Res> {
  factory _$$CollegesDetailsEventImplCopyWith(_$CollegesDetailsEventImpl value,
          $Res Function(_$CollegesDetailsEventImpl) then) =
      __$$CollegesDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CollegeQueryModel queryModel});
}

/// @nodoc
class __$$CollegesDetailsEventImplCopyWithImpl<$Res>
    extends _$CollegesEventCopyWithImpl<$Res, _$CollegesDetailsEventImpl>
    implements _$$CollegesDetailsEventImplCopyWith<$Res> {
  __$$CollegesDetailsEventImplCopyWithImpl(_$CollegesDetailsEventImpl _value,
      $Res Function(_$CollegesDetailsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryModel = null,
  }) {
    return _then(_$CollegesDetailsEventImpl(
      queryModel: null == queryModel
          ? _value.queryModel
          : queryModel // ignore: cast_nullable_to_non_nullable
              as CollegeQueryModel,
    ));
  }
}

/// @nodoc

class _$CollegesDetailsEventImpl implements CollegesDetailsEvent {
  const _$CollegesDetailsEventImpl({required this.queryModel});

  @override
  final CollegeQueryModel queryModel;

  @override
  String toString() {
    return 'CollegesEvent.collegesDetails(queryModel: $queryModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollegesDetailsEventImpl &&
            (identical(other.queryModel, queryModel) ||
                other.queryModel == queryModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queryModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollegesDetailsEventImplCopyWith<_$CollegesDetailsEventImpl>
      get copyWith =>
          __$$CollegesDetailsEventImplCopyWithImpl<_$CollegesDetailsEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QueryCollegeModel queryCollegeModel) getColleges,
    required TResult Function(CollegeQueryModel queryModel) collegesDetails,
    required TResult Function(QueryApplyModel queryApplyModel) applyCollege,
    required TResult Function(String place) placesCollege,
  }) {
    return collegesDetails(queryModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QueryCollegeModel queryCollegeModel)? getColleges,
    TResult? Function(CollegeQueryModel queryModel)? collegesDetails,
    TResult? Function(QueryApplyModel queryApplyModel)? applyCollege,
    TResult? Function(String place)? placesCollege,
  }) {
    return collegesDetails?.call(queryModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueryCollegeModel queryCollegeModel)? getColleges,
    TResult Function(CollegeQueryModel queryModel)? collegesDetails,
    TResult Function(QueryApplyModel queryApplyModel)? applyCollege,
    TResult Function(String place)? placesCollege,
    required TResult orElse(),
  }) {
    if (collegesDetails != null) {
      return collegesDetails(queryModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetColleges value) getColleges,
    required TResult Function(CollegesDetailsEvent value) collegesDetails,
    required TResult Function(ApplyCollegeEvent value) applyCollege,
    required TResult Function(PlaceCollege value) placesCollege,
  }) {
    return collegesDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetColleges value)? getColleges,
    TResult? Function(CollegesDetailsEvent value)? collegesDetails,
    TResult? Function(ApplyCollegeEvent value)? applyCollege,
    TResult? Function(PlaceCollege value)? placesCollege,
  }) {
    return collegesDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetColleges value)? getColleges,
    TResult Function(CollegesDetailsEvent value)? collegesDetails,
    TResult Function(ApplyCollegeEvent value)? applyCollege,
    TResult Function(PlaceCollege value)? placesCollege,
    required TResult orElse(),
  }) {
    if (collegesDetails != null) {
      return collegesDetails(this);
    }
    return orElse();
  }
}

abstract class CollegesDetailsEvent implements CollegesEvent {
  const factory CollegesDetailsEvent(
          {required final CollegeQueryModel queryModel}) =
      _$CollegesDetailsEventImpl;

  CollegeQueryModel get queryModel;
  @JsonKey(ignore: true)
  _$$CollegesDetailsEventImplCopyWith<_$CollegesDetailsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApplyCollegeEventImplCopyWith<$Res> {
  factory _$$ApplyCollegeEventImplCopyWith(_$ApplyCollegeEventImpl value,
          $Res Function(_$ApplyCollegeEventImpl) then) =
      __$$ApplyCollegeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QueryApplyModel queryApplyModel});
}

/// @nodoc
class __$$ApplyCollegeEventImplCopyWithImpl<$Res>
    extends _$CollegesEventCopyWithImpl<$Res, _$ApplyCollegeEventImpl>
    implements _$$ApplyCollegeEventImplCopyWith<$Res> {
  __$$ApplyCollegeEventImplCopyWithImpl(_$ApplyCollegeEventImpl _value,
      $Res Function(_$ApplyCollegeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryApplyModel = null,
  }) {
    return _then(_$ApplyCollegeEventImpl(
      queryApplyModel: null == queryApplyModel
          ? _value.queryApplyModel
          : queryApplyModel // ignore: cast_nullable_to_non_nullable
              as QueryApplyModel,
    ));
  }
}

/// @nodoc

class _$ApplyCollegeEventImpl implements ApplyCollegeEvent {
  const _$ApplyCollegeEventImpl({required this.queryApplyModel});

  @override
  final QueryApplyModel queryApplyModel;

  @override
  String toString() {
    return 'CollegesEvent.applyCollege(queryApplyModel: $queryApplyModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyCollegeEventImpl &&
            (identical(other.queryApplyModel, queryApplyModel) ||
                other.queryApplyModel == queryApplyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queryApplyModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplyCollegeEventImplCopyWith<_$ApplyCollegeEventImpl> get copyWith =>
      __$$ApplyCollegeEventImplCopyWithImpl<_$ApplyCollegeEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QueryCollegeModel queryCollegeModel) getColleges,
    required TResult Function(CollegeQueryModel queryModel) collegesDetails,
    required TResult Function(QueryApplyModel queryApplyModel) applyCollege,
    required TResult Function(String place) placesCollege,
  }) {
    return applyCollege(queryApplyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QueryCollegeModel queryCollegeModel)? getColleges,
    TResult? Function(CollegeQueryModel queryModel)? collegesDetails,
    TResult? Function(QueryApplyModel queryApplyModel)? applyCollege,
    TResult? Function(String place)? placesCollege,
  }) {
    return applyCollege?.call(queryApplyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueryCollegeModel queryCollegeModel)? getColleges,
    TResult Function(CollegeQueryModel queryModel)? collegesDetails,
    TResult Function(QueryApplyModel queryApplyModel)? applyCollege,
    TResult Function(String place)? placesCollege,
    required TResult orElse(),
  }) {
    if (applyCollege != null) {
      return applyCollege(queryApplyModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetColleges value) getColleges,
    required TResult Function(CollegesDetailsEvent value) collegesDetails,
    required TResult Function(ApplyCollegeEvent value) applyCollege,
    required TResult Function(PlaceCollege value) placesCollege,
  }) {
    return applyCollege(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetColleges value)? getColleges,
    TResult? Function(CollegesDetailsEvent value)? collegesDetails,
    TResult? Function(ApplyCollegeEvent value)? applyCollege,
    TResult? Function(PlaceCollege value)? placesCollege,
  }) {
    return applyCollege?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetColleges value)? getColleges,
    TResult Function(CollegesDetailsEvent value)? collegesDetails,
    TResult Function(ApplyCollegeEvent value)? applyCollege,
    TResult Function(PlaceCollege value)? placesCollege,
    required TResult orElse(),
  }) {
    if (applyCollege != null) {
      return applyCollege(this);
    }
    return orElse();
  }
}

abstract class ApplyCollegeEvent implements CollegesEvent {
  const factory ApplyCollegeEvent(
          {required final QueryApplyModel queryApplyModel}) =
      _$ApplyCollegeEventImpl;

  QueryApplyModel get queryApplyModel;
  @JsonKey(ignore: true)
  _$$ApplyCollegeEventImplCopyWith<_$ApplyCollegeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaceCollegeImplCopyWith<$Res> {
  factory _$$PlaceCollegeImplCopyWith(
          _$PlaceCollegeImpl value, $Res Function(_$PlaceCollegeImpl) then) =
      __$$PlaceCollegeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String place});
}

/// @nodoc
class __$$PlaceCollegeImplCopyWithImpl<$Res>
    extends _$CollegesEventCopyWithImpl<$Res, _$PlaceCollegeImpl>
    implements _$$PlaceCollegeImplCopyWith<$Res> {
  __$$PlaceCollegeImplCopyWithImpl(
      _$PlaceCollegeImpl _value, $Res Function(_$PlaceCollegeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
  }) {
    return _then(_$PlaceCollegeImpl(
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlaceCollegeImpl implements PlaceCollege {
  const _$PlaceCollegeImpl({required this.place});

  @override
  final String place;

  @override
  String toString() {
    return 'CollegesEvent.placesCollege(place: $place)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceCollegeImpl &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceCollegeImplCopyWith<_$PlaceCollegeImpl> get copyWith =>
      __$$PlaceCollegeImplCopyWithImpl<_$PlaceCollegeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QueryCollegeModel queryCollegeModel) getColleges,
    required TResult Function(CollegeQueryModel queryModel) collegesDetails,
    required TResult Function(QueryApplyModel queryApplyModel) applyCollege,
    required TResult Function(String place) placesCollege,
  }) {
    return placesCollege(place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QueryCollegeModel queryCollegeModel)? getColleges,
    TResult? Function(CollegeQueryModel queryModel)? collegesDetails,
    TResult? Function(QueryApplyModel queryApplyModel)? applyCollege,
    TResult? Function(String place)? placesCollege,
  }) {
    return placesCollege?.call(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QueryCollegeModel queryCollegeModel)? getColleges,
    TResult Function(CollegeQueryModel queryModel)? collegesDetails,
    TResult Function(QueryApplyModel queryApplyModel)? applyCollege,
    TResult Function(String place)? placesCollege,
    required TResult orElse(),
  }) {
    if (placesCollege != null) {
      return placesCollege(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetColleges value) getColleges,
    required TResult Function(CollegesDetailsEvent value) collegesDetails,
    required TResult Function(ApplyCollegeEvent value) applyCollege,
    required TResult Function(PlaceCollege value) placesCollege,
  }) {
    return placesCollege(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetColleges value)? getColleges,
    TResult? Function(CollegesDetailsEvent value)? collegesDetails,
    TResult? Function(ApplyCollegeEvent value)? applyCollege,
    TResult? Function(PlaceCollege value)? placesCollege,
  }) {
    return placesCollege?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetColleges value)? getColleges,
    TResult Function(CollegesDetailsEvent value)? collegesDetails,
    TResult Function(ApplyCollegeEvent value)? applyCollege,
    TResult Function(PlaceCollege value)? placesCollege,
    required TResult orElse(),
  }) {
    if (placesCollege != null) {
      return placesCollege(this);
    }
    return orElse();
  }
}

abstract class PlaceCollege implements CollegesEvent {
  const factory PlaceCollege({required final String place}) =
      _$PlaceCollegeImpl;

  String get place;
  @JsonKey(ignore: true)
  _$$PlaceCollegeImplCopyWith<_$PlaceCollegeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CollegesState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get placeName => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  Colleges? get colleges => throw _privateConstructorUsedError;
  CollegeDetails? get collegesDetails => throw _privateConstructorUsedError;
  ApplyCollege? get applyCollege => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CollegesStateCopyWith<CollegesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollegesStateCopyWith<$Res> {
  factory $CollegesStateCopyWith(
          CollegesState value, $Res Function(CollegesState) then) =
      _$CollegesStateCopyWithImpl<$Res, CollegesState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isDone,
      String? message,
      String? placeName,
      int? id,
      Colleges? colleges,
      CollegeDetails? collegesDetails,
      ApplyCollege? applyCollege});
}

/// @nodoc
class _$CollegesStateCopyWithImpl<$Res, $Val extends CollegesState>
    implements $CollegesStateCopyWith<$Res> {
  _$CollegesStateCopyWithImpl(this._value, this._then);

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
    Object? placeName = freezed,
    Object? id = freezed,
    Object? colleges = freezed,
    Object? collegesDetails = freezed,
    Object? applyCollege = freezed,
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
      placeName: freezed == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      colleges: freezed == colleges
          ? _value.colleges
          : colleges // ignore: cast_nullable_to_non_nullable
              as Colleges?,
      collegesDetails: freezed == collegesDetails
          ? _value.collegesDetails
          : collegesDetails // ignore: cast_nullable_to_non_nullable
              as CollegeDetails?,
      applyCollege: freezed == applyCollege
          ? _value.applyCollege
          : applyCollege // ignore: cast_nullable_to_non_nullable
              as ApplyCollege?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CollegesStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isDone,
      String? message,
      String? placeName,
      int? id,
      Colleges? colleges,
      CollegeDetails? collegesDetails,
      ApplyCollege? applyCollege});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CollegesStateCopyWithImpl<$Res, _$InitialImpl>
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
    Object? placeName = freezed,
    Object? id = freezed,
    Object? colleges = freezed,
    Object? collegesDetails = freezed,
    Object? applyCollege = freezed,
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
      placeName: freezed == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      colleges: freezed == colleges
          ? _value.colleges
          : colleges // ignore: cast_nullable_to_non_nullable
              as Colleges?,
      collegesDetails: freezed == collegesDetails
          ? _value.collegesDetails
          : collegesDetails // ignore: cast_nullable_to_non_nullable
              as CollegeDetails?,
      applyCollege: freezed == applyCollege
          ? _value.applyCollege
          : applyCollege // ignore: cast_nullable_to_non_nullable
              as ApplyCollege?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      required this.isDone,
      this.message,
      this.placeName,
      this.id,
      this.colleges,
      this.collegesDetails,
      this.applyCollege});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool isDone;
  @override
  final String? message;
  @override
  final String? placeName;
  @override
  final int? id;
  @override
  final Colleges? colleges;
  @override
  final CollegeDetails? collegesDetails;
  @override
  final ApplyCollege? applyCollege;

  @override
  String toString() {
    return 'CollegesState(isLoading: $isLoading, hasError: $hasError, isDone: $isDone, message: $message, placeName: $placeName, id: $id, colleges: $colleges, collegesDetails: $collegesDetails, applyCollege: $applyCollege)';
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
            (identical(other.message, message) || other.message == message) &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.colleges, colleges) ||
                other.colleges == colleges) &&
            (identical(other.collegesDetails, collegesDetails) ||
                other.collegesDetails == collegesDetails) &&
            (identical(other.applyCollege, applyCollege) ||
                other.applyCollege == applyCollege));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError, isDone,
      message, placeName, id, colleges, collegesDetails, applyCollege);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements CollegesState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      required final bool isDone,
      final String? message,
      final String? placeName,
      final int? id,
      final Colleges? colleges,
      final CollegeDetails? collegesDetails,
      final ApplyCollege? applyCollege}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isDone;
  @override
  String? get message;
  @override
  String? get placeName;
  @override
  int? get id;
  @override
  Colleges? get colleges;
  @override
  CollegeDetails? get collegesDetails;
  @override
  ApplyCollege? get applyCollege;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
