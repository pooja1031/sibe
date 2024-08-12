import 'package:flutter/material.dart';
import 'package:study_in_banglore/application/presentation/accommadation/accommadation_details.dart';
import 'package:study_in_banglore/application/presentation/accommadation/accommadation_list.dart';
import 'package:study_in_banglore/application/presentation/bottom_navigation/main_page.dart';
import 'package:study_in_banglore/application/presentation/colleges/colleges_details.dart';
import 'package:study_in_banglore/application/presentation/counselling/oneononefree.dart';
import 'package:study_in_banglore/application/presentation/courses/offlinecourses.dart';
import 'package:study_in_banglore/application/presentation/courses/onlinecourses.dart';
import 'package:study_in_banglore/application/presentation/courses/shorttermcourses.dart';
import 'package:study_in_banglore/application/presentation/event_screen/events_screen.dart';
import 'package:study_in_banglore/application/presentation/home/homescreen.dart';
import 'package:study_in_banglore/application/presentation/colleges/colleges.dart';
import 'package:study_in_banglore/application/presentation/colleges/places_list.dart';
import 'package:study_in_banglore/application/presentation/home/widgets/apply_screens/apply_screen.dart';
import 'package:study_in_banglore/application/presentation/parttime_job_screen/parttime_job_screen.dart';
import 'package:study_in_banglore/application/presentation/registrations/login.dart';
import 'package:study_in_banglore/application/presentation/registrations/scholarship_submission.dart';
import 'package:study_in_banglore/application/presentation/registrations/signup.dart';
import 'package:study_in_banglore/application/presentation/registrations/submit.dart';
import 'package:study_in_banglore/application/presentation/routes/routes.dart';
import 'package:study_in_banglore/application/presentation/splash_screen/splash_screen.dart';
import 'package:study_in_banglore/application/presentation/universities/universities_list.dart';

class RouteGenerator {
  static Route onRouteGenerator(RouteSettings routeSettings) {
    final arguments = routeSettings.arguments;
    switch (routeSettings.name) {
      case Routes.initial:
        return MaterialPageRoute(builder: (ctx) => const ScreenSplash());
      case Routes.register:
        return MaterialPageRoute(builder: (ctx) => const SignUp());
      case Routes.signInPage:
        return MaterialPageRoute(builder: (ctx) => const LoginScreen());
      case Routes.mainpage:
        return MaterialPageRoute(builder: (ctx) => const MainPage());
      case Routes.home:
        return MaterialPageRoute(builder: (ctx) => const HomeScreen());
      case Routes.onlineCourses:
        return MaterialPageRoute(builder: (ctx) => OnlineCourses());
      case Routes.offlineCourses:
        return MaterialPageRoute(builder: (ctx) => OfflineCourses());
      case Routes.shortTermCourses:
        return MaterialPageRoute(builder: (ctx) => ShortTermCourses());
      case Routes.universities:
        return MaterialPageRoute(builder: (ctx) => const UniversitiesTile());
      case Routes.colleges:
        return arguments is int
            ? MaterialPageRoute(
                builder: (ctx) => CollegesScreen(
                  id: arguments,
                ),
              )
            : MaterialPageRoute(builder: (ctx) => const CollegesScreen());
      case Routes.places:
        return MaterialPageRoute(builder: (ctx) => const Places());
      case Routes.oneonfree:
        return MaterialPageRoute(builder: (ctx) => const FreeCounselling());
      case Routes.parttimejob:
        return MaterialPageRoute(
          builder: (ctx) => const ParttimeJobScreen(),
        );
      case Routes.eventsinbenglore:
        return MaterialPageRoute(
          builder: (ctx) => const EventsScreen(),
        );
      case Routes.accommadationList:
        return MaterialPageRoute(builder: (ctx) => AccommodationList());
      case Routes.scholarshipSubmission:
        return MaterialPageRoute(builder: (ctx) => ScholarshipSubmission());
      case Routes.accommadationDetails:
        return MaterialPageRoute(builder: (ctx) => AccommadationDetails());
      case Routes.collegeDetails:
        return arguments is int
            ? MaterialPageRoute(
                builder: (ctx) => CollegesDetailsScreen(
                  id: arguments,
                ),
              )
            : _errorRoute();
      case Routes.submit:
        return MaterialPageRoute(builder: (ctx) => const Submit());
      case Routes.apply:
        return MaterialPageRoute(builder: (ctx) => const ApplyScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (ctx) {
      return const Scaffold(
        body: Center(
          child: Text('Something Error'),
        ),
      );
    });
  }

  static Uri generateURI(
      {required String routeName, required Map<String, dynamic> parameters}) {
    switch (routeName) {
      case Routes.collegeDetails:
        final collegeId = parameters['collegeId'] as int;
        return _generateCollegeDetailsURI(collegeId);
      default:
        return _generateDefaultURI(routeName, parameters);
    }
  }

  static Uri _generateCollegeDetailsURI(int collegeId) {
    final uriString =
        'https://dev-sib.anandagireesh.me/api/user/collegeDetails?collegeId=$collegeId';
    return Uri.parse(uriString);
  }

  static Uri _generateDefaultURI(
      String routeName, Map<String, dynamic> parameters) {
    String uriString = routeName;
    parameters.forEach((key, value) {
      uriString += '/$key=$value';
    });
    return Uri.parse(uriString);
  }
}
