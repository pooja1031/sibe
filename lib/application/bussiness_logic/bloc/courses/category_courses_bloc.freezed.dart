// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_courses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryCoursesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryCourseQuery queryModel)
        getCategoryCourses,
    required TResult Function(CoursesQueryModel coursesQueryModel) getCourses,
    required TResult Function(int courseId, String courseName)
        selectCourseEvent,
    required TResult Function(CoursesDetailsQueryModel queryModel)
        coursesDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryCourseQuery queryModel)? getCategoryCourses,
    TResult? Function(CoursesQueryModel coursesQueryModel)? getCourses,
    TResult? Function(int courseId, String courseName)? selectCourseEvent,
    TResult? Function(CoursesDetailsQueryModel queryModel)? coursesDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryCourseQuery queryModel)? getCategoryCourses,
    TResult Function(CoursesQueryModel coursesQueryModel)? getCourses,
    TResult Function(int courseId, String courseName)? selectCourseEvent,
    TResult Function(CoursesDetailsQueryModel queryModel)? coursesDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCategoryCourses value) getCategoryCourses,
    required TResult Function(GetCourse value) getCourses,
    required TResult Function(SelectCourseEvent value) selectCourseEvent,
    required TResult Function(CoursesDetails value) coursesDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCategoryCourses value)? getCategoryCourses,
    TResult? Function(GetCourse value)? getCourses,
    TResult? Function(SelectCourseEvent value)? selectCourseEvent,
    TResult? Function(CoursesDetails value)? coursesDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCategoryCourses value)? getCategoryCourses,
    TResult Function(GetCourse value)? getCourses,
    TResult Function(SelectCourseEvent value)? selectCourseEvent,
    TResult Function(CoursesDetails value)? coursesDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCoursesEventCopyWith<$Res> {
  factory $CategoryCoursesEventCopyWith(CategoryCoursesEvent value,
          $Res Function(CategoryCoursesEvent) then) =
      _$CategoryCoursesEventCopyWithImpl<$Res, CategoryCoursesEvent>;
}

/// @nodoc
class _$CategoryCoursesEventCopyWithImpl<$Res,
        $Val extends CategoryCoursesEvent>
    implements $CategoryCoursesEventCopyWith<$Res> {
  _$CategoryCoursesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCategoryCoursesImplCopyWith<$Res> {
  factory _$$GetCategoryCoursesImplCopyWith(_$GetCategoryCoursesImpl value,
          $Res Function(_$GetCategoryCoursesImpl) then) =
      __$$GetCategoryCoursesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryCourseQuery queryModel});
}

/// @nodoc
class __$$GetCategoryCoursesImplCopyWithImpl<$Res>
    extends _$CategoryCoursesEventCopyWithImpl<$Res, _$GetCategoryCoursesImpl>
    implements _$$GetCategoryCoursesImplCopyWith<$Res> {
  __$$GetCategoryCoursesImplCopyWithImpl(_$GetCategoryCoursesImpl _value,
      $Res Function(_$GetCategoryCoursesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryModel = null,
  }) {
    return _then(_$GetCategoryCoursesImpl(
      queryModel: null == queryModel
          ? _value.queryModel
          : queryModel // ignore: cast_nullable_to_non_nullable
              as CategoryCourseQuery,
    ));
  }
}

/// @nodoc

class _$GetCategoryCoursesImpl implements GetCategoryCourses {
  const _$GetCategoryCoursesImpl({required this.queryModel});

  @override
  final CategoryCourseQuery queryModel;

  @override
  String toString() {
    return 'CategoryCoursesEvent.getCategoryCourses(queryModel: $queryModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoryCoursesImpl &&
            (identical(other.queryModel, queryModel) ||
                other.queryModel == queryModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queryModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCategoryCoursesImplCopyWith<_$GetCategoryCoursesImpl> get copyWith =>
      __$$GetCategoryCoursesImplCopyWithImpl<_$GetCategoryCoursesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryCourseQuery queryModel)
        getCategoryCourses,
    required TResult Function(CoursesQueryModel coursesQueryModel) getCourses,
    required TResult Function(int courseId, String courseName)
        selectCourseEvent,
    required TResult Function(CoursesDetailsQueryModel queryModel)
        coursesDetails,
  }) {
    return getCategoryCourses(queryModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryCourseQuery queryModel)? getCategoryCourses,
    TResult? Function(CoursesQueryModel coursesQueryModel)? getCourses,
    TResult? Function(int courseId, String courseName)? selectCourseEvent,
    TResult? Function(CoursesDetailsQueryModel queryModel)? coursesDetails,
  }) {
    return getCategoryCourses?.call(queryModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryCourseQuery queryModel)? getCategoryCourses,
    TResult Function(CoursesQueryModel coursesQueryModel)? getCourses,
    TResult Function(int courseId, String courseName)? selectCourseEvent,
    TResult Function(CoursesDetailsQueryModel queryModel)? coursesDetails,
    required TResult orElse(),
  }) {
    if (getCategoryCourses != null) {
      return getCategoryCourses(queryModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCategoryCourses value) getCategoryCourses,
    required TResult Function(GetCourse value) getCourses,
    required TResult Function(SelectCourseEvent value) selectCourseEvent,
    required TResult Function(CoursesDetails value) coursesDetails,
  }) {
    return getCategoryCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCategoryCourses value)? getCategoryCourses,
    TResult? Function(GetCourse value)? getCourses,
    TResult? Function(SelectCourseEvent value)? selectCourseEvent,
    TResult? Function(CoursesDetails value)? coursesDetails,
  }) {
    return getCategoryCourses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCategoryCourses value)? getCategoryCourses,
    TResult Function(GetCourse value)? getCourses,
    TResult Function(SelectCourseEvent value)? selectCourseEvent,
    TResult Function(CoursesDetails value)? coursesDetails,
    required TResult orElse(),
  }) {
    if (getCategoryCourses != null) {
      return getCategoryCourses(this);
    }
    return orElse();
  }
}

abstract class GetCategoryCourses implements CategoryCoursesEvent {
  const factory GetCategoryCourses(
          {required final CategoryCourseQuery queryModel}) =
      _$GetCategoryCoursesImpl;

  CategoryCourseQuery get queryModel;
  @JsonKey(ignore: true)
  _$$GetCategoryCoursesImplCopyWith<_$GetCategoryCoursesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCourseImplCopyWith<$Res> {
  factory _$$GetCourseImplCopyWith(
          _$GetCourseImpl value, $Res Function(_$GetCourseImpl) then) =
      __$$GetCourseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CoursesQueryModel coursesQueryModel});
}

/// @nodoc
class __$$GetCourseImplCopyWithImpl<$Res>
    extends _$CategoryCoursesEventCopyWithImpl<$Res, _$GetCourseImpl>
    implements _$$GetCourseImplCopyWith<$Res> {
  __$$GetCourseImplCopyWithImpl(
      _$GetCourseImpl _value, $Res Function(_$GetCourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coursesQueryModel = null,
  }) {
    return _then(_$GetCourseImpl(
      coursesQueryModel: null == coursesQueryModel
          ? _value.coursesQueryModel
          : coursesQueryModel // ignore: cast_nullable_to_non_nullable
              as CoursesQueryModel,
    ));
  }
}

/// @nodoc

class _$GetCourseImpl implements GetCourse {
  const _$GetCourseImpl({required this.coursesQueryModel});

  @override
  final CoursesQueryModel coursesQueryModel;

  @override
  String toString() {
    return 'CategoryCoursesEvent.getCourses(coursesQueryModel: $coursesQueryModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCourseImpl &&
            (identical(other.coursesQueryModel, coursesQueryModel) ||
                other.coursesQueryModel == coursesQueryModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coursesQueryModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCourseImplCopyWith<_$GetCourseImpl> get copyWith =>
      __$$GetCourseImplCopyWithImpl<_$GetCourseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryCourseQuery queryModel)
        getCategoryCourses,
    required TResult Function(CoursesQueryModel coursesQueryModel) getCourses,
    required TResult Function(int courseId, String courseName)
        selectCourseEvent,
    required TResult Function(CoursesDetailsQueryModel queryModel)
        coursesDetails,
  }) {
    return getCourses(coursesQueryModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryCourseQuery queryModel)? getCategoryCourses,
    TResult? Function(CoursesQueryModel coursesQueryModel)? getCourses,
    TResult? Function(int courseId, String courseName)? selectCourseEvent,
    TResult? Function(CoursesDetailsQueryModel queryModel)? coursesDetails,
  }) {
    return getCourses?.call(coursesQueryModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryCourseQuery queryModel)? getCategoryCourses,
    TResult Function(CoursesQueryModel coursesQueryModel)? getCourses,
    TResult Function(int courseId, String courseName)? selectCourseEvent,
    TResult Function(CoursesDetailsQueryModel queryModel)? coursesDetails,
    required TResult orElse(),
  }) {
    if (getCourses != null) {
      return getCourses(coursesQueryModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCategoryCourses value) getCategoryCourses,
    required TResult Function(GetCourse value) getCourses,
    required TResult Function(SelectCourseEvent value) selectCourseEvent,
    required TResult Function(CoursesDetails value) coursesDetails,
  }) {
    return getCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCategoryCourses value)? getCategoryCourses,
    TResult? Function(GetCourse value)? getCourses,
    TResult? Function(SelectCourseEvent value)? selectCourseEvent,
    TResult? Function(CoursesDetails value)? coursesDetails,
  }) {
    return getCourses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCategoryCourses value)? getCategoryCourses,
    TResult Function(GetCourse value)? getCourses,
    TResult Function(SelectCourseEvent value)? selectCourseEvent,
    TResult Function(CoursesDetails value)? coursesDetails,
    required TResult orElse(),
  }) {
    if (getCourses != null) {
      return getCourses(this);
    }
    return orElse();
  }
}

abstract class GetCourse implements CategoryCoursesEvent {
  const factory GetCourse(
      {required final CoursesQueryModel coursesQueryModel}) = _$GetCourseImpl;

  CoursesQueryModel get coursesQueryModel;
  @JsonKey(ignore: true)
  _$$GetCourseImplCopyWith<_$GetCourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectCourseEventImplCopyWith<$Res> {
  factory _$$SelectCourseEventImplCopyWith(_$SelectCourseEventImpl value,
          $Res Function(_$SelectCourseEventImpl) then) =
      __$$SelectCourseEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int courseId, String courseName});
}

/// @nodoc
class __$$SelectCourseEventImplCopyWithImpl<$Res>
    extends _$CategoryCoursesEventCopyWithImpl<$Res, _$SelectCourseEventImpl>
    implements _$$SelectCourseEventImplCopyWith<$Res> {
  __$$SelectCourseEventImplCopyWithImpl(_$SelectCourseEventImpl _value,
      $Res Function(_$SelectCourseEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? courseName = null,
  }) {
    return _then(_$SelectCourseEventImpl(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectCourseEventImpl implements SelectCourseEvent {
  const _$SelectCourseEventImpl(
      {required this.courseId, required this.courseName});

  @override
  final int courseId;
  @override
  final String courseName;

  @override
  String toString() {
    return 'CategoryCoursesEvent.selectCourseEvent(courseId: $courseId, courseName: $courseName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectCourseEventImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId, courseName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectCourseEventImplCopyWith<_$SelectCourseEventImpl> get copyWith =>
      __$$SelectCourseEventImplCopyWithImpl<_$SelectCourseEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryCourseQuery queryModel)
        getCategoryCourses,
    required TResult Function(CoursesQueryModel coursesQueryModel) getCourses,
    required TResult Function(int courseId, String courseName)
        selectCourseEvent,
    required TResult Function(CoursesDetailsQueryModel queryModel)
        coursesDetails,
  }) {
    return selectCourseEvent(courseId, courseName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryCourseQuery queryModel)? getCategoryCourses,
    TResult? Function(CoursesQueryModel coursesQueryModel)? getCourses,
    TResult? Function(int courseId, String courseName)? selectCourseEvent,
    TResult? Function(CoursesDetailsQueryModel queryModel)? coursesDetails,
  }) {
    return selectCourseEvent?.call(courseId, courseName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryCourseQuery queryModel)? getCategoryCourses,
    TResult Function(CoursesQueryModel coursesQueryModel)? getCourses,
    TResult Function(int courseId, String courseName)? selectCourseEvent,
    TResult Function(CoursesDetailsQueryModel queryModel)? coursesDetails,
    required TResult orElse(),
  }) {
    if (selectCourseEvent != null) {
      return selectCourseEvent(courseId, courseName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCategoryCourses value) getCategoryCourses,
    required TResult Function(GetCourse value) getCourses,
    required TResult Function(SelectCourseEvent value) selectCourseEvent,
    required TResult Function(CoursesDetails value) coursesDetails,
  }) {
    return selectCourseEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCategoryCourses value)? getCategoryCourses,
    TResult? Function(GetCourse value)? getCourses,
    TResult? Function(SelectCourseEvent value)? selectCourseEvent,
    TResult? Function(CoursesDetails value)? coursesDetails,
  }) {
    return selectCourseEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCategoryCourses value)? getCategoryCourses,
    TResult Function(GetCourse value)? getCourses,
    TResult Function(SelectCourseEvent value)? selectCourseEvent,
    TResult Function(CoursesDetails value)? coursesDetails,
    required TResult orElse(),
  }) {
    if (selectCourseEvent != null) {
      return selectCourseEvent(this);
    }
    return orElse();
  }
}

abstract class SelectCourseEvent implements CategoryCoursesEvent {
  const factory SelectCourseEvent(
      {required final int courseId,
      required final String courseName}) = _$SelectCourseEventImpl;

  int get courseId;
  String get courseName;
  @JsonKey(ignore: true)
  _$$SelectCourseEventImplCopyWith<_$SelectCourseEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoursesDetailsImplCopyWith<$Res> {
  factory _$$CoursesDetailsImplCopyWith(_$CoursesDetailsImpl value,
          $Res Function(_$CoursesDetailsImpl) then) =
      __$$CoursesDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CoursesDetailsQueryModel queryModel});
}

/// @nodoc
class __$$CoursesDetailsImplCopyWithImpl<$Res>
    extends _$CategoryCoursesEventCopyWithImpl<$Res, _$CoursesDetailsImpl>
    implements _$$CoursesDetailsImplCopyWith<$Res> {
  __$$CoursesDetailsImplCopyWithImpl(
      _$CoursesDetailsImpl _value, $Res Function(_$CoursesDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryModel = null,
  }) {
    return _then(_$CoursesDetailsImpl(
      queryModel: null == queryModel
          ? _value.queryModel
          : queryModel // ignore: cast_nullable_to_non_nullable
              as CoursesDetailsQueryModel,
    ));
  }
}

/// @nodoc

class _$CoursesDetailsImpl implements CoursesDetails {
  const _$CoursesDetailsImpl({required this.queryModel});

  @override
  final CoursesDetailsQueryModel queryModel;

  @override
  String toString() {
    return 'CategoryCoursesEvent.coursesDetails(queryModel: $queryModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoursesDetailsImpl &&
            (identical(other.queryModel, queryModel) ||
                other.queryModel == queryModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queryModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoursesDetailsImplCopyWith<_$CoursesDetailsImpl> get copyWith =>
      __$$CoursesDetailsImplCopyWithImpl<_$CoursesDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryCourseQuery queryModel)
        getCategoryCourses,
    required TResult Function(CoursesQueryModel coursesQueryModel) getCourses,
    required TResult Function(int courseId, String courseName)
        selectCourseEvent,
    required TResult Function(CoursesDetailsQueryModel queryModel)
        coursesDetails,
  }) {
    return coursesDetails(queryModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryCourseQuery queryModel)? getCategoryCourses,
    TResult? Function(CoursesQueryModel coursesQueryModel)? getCourses,
    TResult? Function(int courseId, String courseName)? selectCourseEvent,
    TResult? Function(CoursesDetailsQueryModel queryModel)? coursesDetails,
  }) {
    return coursesDetails?.call(queryModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryCourseQuery queryModel)? getCategoryCourses,
    TResult Function(CoursesQueryModel coursesQueryModel)? getCourses,
    TResult Function(int courseId, String courseName)? selectCourseEvent,
    TResult Function(CoursesDetailsQueryModel queryModel)? coursesDetails,
    required TResult orElse(),
  }) {
    if (coursesDetails != null) {
      return coursesDetails(queryModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCategoryCourses value) getCategoryCourses,
    required TResult Function(GetCourse value) getCourses,
    required TResult Function(SelectCourseEvent value) selectCourseEvent,
    required TResult Function(CoursesDetails value) coursesDetails,
  }) {
    return coursesDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCategoryCourses value)? getCategoryCourses,
    TResult? Function(GetCourse value)? getCourses,
    TResult? Function(SelectCourseEvent value)? selectCourseEvent,
    TResult? Function(CoursesDetails value)? coursesDetails,
  }) {
    return coursesDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCategoryCourses value)? getCategoryCourses,
    TResult Function(GetCourse value)? getCourses,
    TResult Function(SelectCourseEvent value)? selectCourseEvent,
    TResult Function(CoursesDetails value)? coursesDetails,
    required TResult orElse(),
  }) {
    if (coursesDetails != null) {
      return coursesDetails(this);
    }
    return orElse();
  }
}

abstract class CoursesDetails implements CategoryCoursesEvent {
  const factory CoursesDetails(
          {required final CoursesDetailsQueryModel queryModel}) =
      _$CoursesDetailsImpl;

  CoursesDetailsQueryModel get queryModel;
  @JsonKey(ignore: true)
  _$$CoursesDetailsImplCopyWith<_$CoursesDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryCoursesState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get courseName => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  CategoryCourses? get categoryCourses => throw _privateConstructorUsedError;
  Courses? get courses => throw _privateConstructorUsedError;
  CoursesDetailsModel? get coursesDetailsModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryCoursesStateCopyWith<CategoryCoursesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCoursesStateCopyWith<$Res> {
  factory $CategoryCoursesStateCopyWith(CategoryCoursesState value,
          $Res Function(CategoryCoursesState) then) =
      _$CategoryCoursesStateCopyWithImpl<$Res, CategoryCoursesState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      String? courseName,
      int? id,
      CategoryCourses? categoryCourses,
      Courses? courses,
      CoursesDetailsModel? coursesDetailsModel});
}

/// @nodoc
class _$CategoryCoursesStateCopyWithImpl<$Res,
        $Val extends CategoryCoursesState>
    implements $CategoryCoursesStateCopyWith<$Res> {
  _$CategoryCoursesStateCopyWithImpl(this._value, this._then);

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
    Object? courseName = freezed,
    Object? id = freezed,
    Object? categoryCourses = freezed,
    Object? courses = freezed,
    Object? coursesDetailsModel = freezed,
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
      courseName: freezed == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryCourses: freezed == categoryCourses
          ? _value.categoryCourses
          : categoryCourses // ignore: cast_nullable_to_non_nullable
              as CategoryCourses?,
      courses: freezed == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as Courses?,
      coursesDetailsModel: freezed == coursesDetailsModel
          ? _value.coursesDetailsModel
          : coursesDetailsModel // ignore: cast_nullable_to_non_nullable
              as CoursesDetailsModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CategoryCoursesStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      String? courseName,
      int? id,
      CategoryCourses? categoryCourses,
      Courses? courses,
      CoursesDetailsModel? coursesDetailsModel});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CategoryCoursesStateCopyWithImpl<$Res, _$InitialImpl>
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
    Object? courseName = freezed,
    Object? id = freezed,
    Object? categoryCourses = freezed,
    Object? courses = freezed,
    Object? coursesDetailsModel = freezed,
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
      courseName: freezed == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryCourses: freezed == categoryCourses
          ? _value.categoryCourses
          : categoryCourses // ignore: cast_nullable_to_non_nullable
              as CategoryCourses?,
      courses: freezed == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as Courses?,
      coursesDetailsModel: freezed == coursesDetailsModel
          ? _value.coursesDetailsModel
          : coursesDetailsModel // ignore: cast_nullable_to_non_nullable
              as CoursesDetailsModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      this.message,
      this.courseName,
      this.id,
      this.categoryCourses,
      this.courses,
      this.coursesDetailsModel});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final String? courseName;
  @override
  final int? id;
  @override
  final CategoryCourses? categoryCourses;
  @override
  final Courses? courses;
  @override
  final CoursesDetailsModel? coursesDetailsModel;

  @override
  String toString() {
    return 'CategoryCoursesState(isLoading: $isLoading, hasError: $hasError, message: $message, courseName: $courseName, id: $id, categoryCourses: $categoryCourses, courses: $courses, coursesDetailsModel: $coursesDetailsModel)';
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
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryCourses, categoryCourses) ||
                other.categoryCourses == categoryCourses) &&
            (identical(other.courses, courses) || other.courses == courses) &&
            (identical(other.coursesDetailsModel, coursesDetailsModel) ||
                other.coursesDetailsModel == coursesDetailsModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError, message,
      courseName, id, categoryCourses, courses, coursesDetailsModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements CategoryCoursesState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      final String? message,
      final String? courseName,
      final int? id,
      final CategoryCourses? categoryCourses,
      final Courses? courses,
      final CoursesDetailsModel? coursesDetailsModel}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  String? get courseName;
  @override
  int? get id;
  @override
  CategoryCourses? get categoryCourses;
  @override
  Courses? get courses;
  @override
  CoursesDetailsModel? get coursesDetailsModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
