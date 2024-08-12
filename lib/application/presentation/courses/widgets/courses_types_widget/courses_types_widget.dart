import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/courses/category_courses_bloc.dart';
import 'package:study_in_banglore/application/presentation/utils/global_variable.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';

class CoursesTypeWidget extends StatelessWidget {
  CoursesTypeWidget({super.key});
  var height, width;
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    height = screenSize.height;
    width = screenSize.width;
    return BlocBuilder<CategoryCoursesBloc, CategoryCoursesState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: LoadingAnimationWidget.inkDrop(
                  color: AppColors.kGrey, size: 25),
            ),
          );
        } else if (state.coursesDetailsModel != null &&
            state.coursesDetailsModel!.data != null) {
          final course = state.coursesDetailsModel!.data;
          return Container(
            height: height * 0.4,
            decoration: BoxDecoration(color: Colors.grey[300]),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    course!.course!,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Course Duration",
                        style: TextStyle(color: AppColors.kGrey),
                      ),
                      Text("Course Level",
                          style: TextStyle(color: AppColors.kGrey)),
                      Text("Course Type",
                          style: TextStyle(color: AppColors.kGrey))
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(course.duration!,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text(course.courseLevel!,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text(course.coursesType ?? 'Proffesional',
                          style: const TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          course.description!,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        } else {
          return const Center(
            child: Text('Courses not available'),
          );
        }
      },
    );
  }
}
