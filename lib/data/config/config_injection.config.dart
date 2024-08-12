// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:study_in_banglore/application/bussiness_logic/bloc/apply/apply_bloc.dart'
    as _i31;
import 'package:study_in_banglore/application/bussiness_logic/bloc/auth/auth_bloc.dart'
    as _i30;
import 'package:study_in_banglore/application/bussiness_logic/bloc/bloc/accommodation_bloc.dart'
    as _i25;
import 'package:study_in_banglore/application/bussiness_logic/bloc/colleges/colleges_bloc.dart'
    as _i26;
import 'package:study_in_banglore/application/bussiness_logic/bloc/courses/category_courses_bloc.dart'
    as _i27;
import 'package:study_in_banglore/application/bussiness_logic/bloc/Events/events_bloc.dart'
    as _i24;
import 'package:study_in_banglore/application/bussiness_logic/bloc/parttime_job/parrtime_job_bloc.dart'
    as _i32;
import 'package:study_in_banglore/application/bussiness_logic/bloc/profile/profile_bloc.dart'
    as _i28;
import 'package:study_in_banglore/application/bussiness_logic/bloc/universities/universities_bloc.dart'
    as _i29;
import 'package:study_in_banglore/application/bussiness_logic/cubit/initial_cubit.dart'
    as _i21;
import 'package:study_in_banglore/data/data_provider/accommodation_provider/accommodation_provider.dart'
    as _i14;
import 'package:study_in_banglore/data/data_provider/apply_provider/apply_provider.dart'
    as _i12;
import 'package:study_in_banglore/data/data_provider/auth_provider/auth_provider.dart'
    as _i18;
import 'package:study_in_banglore/data/data_provider/category_courses_provider/category_courses_provider.dart'
    as _i8;
import 'package:study_in_banglore/data/data_provider/colleges_provider/colleges_provider.dart'
    as _i16;
import 'package:study_in_banglore/data/data_provider/events_provider/events_provider.dart'
    as _i10;
import 'package:study_in_banglore/data/data_provider/parttime_job_provider/parttime_job_provider.dart'
    as _i23;
import 'package:study_in_banglore/data/data_provider/profile_provider/profile_provider.dart'
    as _i6;
import 'package:study_in_banglore/data/data_provider/universities_provider/universities_provider.dart'
    as _i20;
import 'package:study_in_banglore/data/module/dio_module.dart' as _i33;
import 'package:study_in_banglore/data/module/secure_storage_module.dart'
    as _i34;
import 'package:study_in_banglore/domain/repositories/accommodation_repository/accomodation_repository.dart'
    as _i13;
import 'package:study_in_banglore/domain/repositories/apply_repository/apply_repository.dart'
    as _i11;
import 'package:study_in_banglore/domain/repositories/auth_repository/auth_repository.dart'
    as _i17;
import 'package:study_in_banglore/domain/repositories/colleges_repository/colleges_repository.dart'
    as _i15;
import 'package:study_in_banglore/domain/repositories/courses_repository/courses_repository.dart'
    as _i7;
import 'package:study_in_banglore/domain/repositories/events_repository/event_repository.dart'
    as _i9;
import 'package:study_in_banglore/domain/repositories/parttime_job_repostory/parttime_job_repository.dart'
    as _i22;
import 'package:study_in_banglore/domain/repositories/profile_repository/profile_repository.dart'
    as _i5;
import 'package:study_in_banglore/domain/repositories/universities_repository/universities_repository.dart'
    as _i19;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    final secureStorageModule = _$SecureStorageModule();
    gh.lazySingleton<_i3.Dio>(() => dioModule.dioInstance);
    gh.lazySingleton<_i4.FlutterSecureStorage>(
        () => secureStorageModule.flutterSecureStorage);
    gh.lazySingleton<_i5.ProfileRepository>(() => _i6.ProfileProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.lazySingleton<_i7.CoursesRepository>(() => _i8.CategoryCoursesProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.lazySingleton<_i9.EventRepository>(() => _i10.EventsProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.lazySingleton<_i11.ApplyRepository>(() => _i12.ApplyProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.lazySingleton<_i13.AccomodationRepository>(
        () => _i14.AccommodationProvider(
              gh<_i3.Dio>(),
              gh<_i4.FlutterSecureStorage>(),
            ));
    gh.lazySingleton<_i15.CollegesRepository>(() => _i16.CollegesProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.lazySingleton<_i17.AuthRepository>(() => _i18.AuthProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.lazySingleton<_i19.UniversitiesRepository>(
        () => _i20.UniversitiesProvider(
              gh<_i3.Dio>(),
              gh<_i4.FlutterSecureStorage>(),
            ));
    gh.factory<_i21.InitialCubit>(
        () => _i21.InitialCubit(gh<_i4.FlutterSecureStorage>()));
    gh.lazySingleton<_i22.ParttimeJobRepository>(() => _i23.ParttimeJobProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.factory<_i24.EventsBloc>(
        () => _i24.EventsBloc(gh<_i9.EventRepository>()));
    gh.factory<_i25.AccommodationBloc>(
        () => _i25.AccommodationBloc(gh<_i13.AccomodationRepository>()));
    gh.factory<_i26.CollegesBloc>(
        () => _i26.CollegesBloc(gh<_i15.CollegesRepository>()));
    gh.factory<_i27.CategoryCoursesBloc>(
        () => _i27.CategoryCoursesBloc(gh<_i7.CoursesRepository>()));
    gh.factory<_i28.ProfileBloc>(
        () => _i28.ProfileBloc(gh<_i5.ProfileRepository>()));
    gh.factory<_i29.UniversitiesBloc>(
        () => _i29.UniversitiesBloc(gh<_i19.UniversitiesRepository>()));
    gh.factory<_i30.AuthBloc>(() => _i30.AuthBloc(gh<_i17.AuthRepository>()));
    gh.factory<_i31.ApplyBloc>(
        () => _i31.ApplyBloc(gh<_i11.ApplyRepository>()));
    gh.factory<_i32.ParrtimeJobBloc>(
        () => _i32.ParrtimeJobBloc(gh<_i22.ParttimeJobRepository>()));
    return this;
  }
}

class _$DioModule extends _i33.DioModule {}

class _$SecureStorageModule extends _i34.SecureStorageModule {}
