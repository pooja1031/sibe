import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/colleges/colleges_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/courses/category_courses_bloc.dart';
import 'package:study_in_banglore/application/presentation/courses/widgets/colleges_widget_course.dart';
import 'package:study_in_banglore/application/presentation/courses/widgets/courses_types_widget/course_college_search.dart';
import 'package:study_in_banglore/application/presentation/courses/widgets/courses_types_widget/courses_types_widget.dart';
import 'package:study_in_banglore/application/presentation/utils/customs/cusom_app_bar.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';
import 'package:study_in_banglore/domain/models/category_courses/courses_details/courses_details_query_model.dart';
import 'package:study_in_banglore/domain/models/colleges/query_college_model.dart';

class CourseDetailsScreen extends StatelessWidget {
  CourseDetailsScreen({super.key, required this.id});
  var height, width;
  final int id;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    height = screenSize.height;
    width = screenSize.width;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CategoryCoursesBloc>().add(
            CategoryCoursesEvent.coursesDetails(
              queryModel: CoursesDetailsQueryModel(id: id),
            ),
          );
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CollegesBloc>().add(
            CollegesEvent.getColleges(
                queryCollegeModel:
                    QueryCollegeModel(page: 1, limit: 30, courseId: id,)),
          );
    });
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: CustomAppBar(
              leading: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(
                    Icons.arrow_back,
                    color: AppColors.kWhite,
                  )),
              title: 'Courses Details')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CoursesTypeWidget(),
          CourseCollegeSearch(
            id: id,
          ),
          CollegesWidgetCo(
            id: id,
          )
        ],
      ),
    );
  }
}
