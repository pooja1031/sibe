import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/Events/events_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/apply/apply_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/auth/auth_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/bloc/accommodation_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/colleges/colleges_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/courses/category_courses_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/parttime_job/parrtime_job_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/profile/profile_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/universities/universities_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/cubit/initial_cubit.dart';
import 'package:study_in_banglore/application/presentation/routes/routes.dart';
import 'package:study_in_banglore/application/presentation/routes/routes_generator.dart';
import 'package:study_in_banglore/data/config/config_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<InitialCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<CategoryCoursesBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<ProfileBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<UniversitiesBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<CollegesBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<ApplyBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<ParrtimeJobBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<EventsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<AccommodationBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'SIBE',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: Routes.initial,
        onGenerateRoute: RouteGenerator.onRouteGenerator,
      ),
    );
  }
}
