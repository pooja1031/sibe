import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/colleges/colleges_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/courses/category_courses_bloc.dart';
import 'package:study_in_banglore/application/presentation/courses/course_details.dart';
import 'package:study_in_banglore/application/presentation/courses/courses_type_screen/courses_type_search.dart';
import 'package:study_in_banglore/application/presentation/utils/customs/cusom_app_bar.dart';
import 'package:study_in_banglore/application/presentation/utils/snack_bar/snack_bar.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';
import 'package:study_in_banglore/domain/models/category_courses/courses/courses_query_model.dart';

class CoursesTypeScreen extends StatelessWidget {
  CoursesTypeScreen({super.key, required this.id, required this.name});
  var height, width;
  final int id;
  final String name;
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    height = screenSize.height;
    width = screenSize.width;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CategoryCoursesBloc>().add(
            CategoryCoursesEvent.getCourses(
              coursesQueryModel: CoursesQueryModel(
                  page: 1,
                  limit: 100,
                  id: id,
                  city: context.read<CollegesBloc>().state.placeName),
            ),
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
                title: name)),
        body: Column(
          children: [
            CoustomSearchTypeField(
              id: id,
            ),
            BlocConsumer<CategoryCoursesBloc, CategoryCoursesState>(
                listener: (context, state) {
              if (state.hasError) {
                showSnack(
                    context: context,
                    message: state.message!,
                    color: AppColors.kRed);
              }
            }, builder: (context, state) {
              if (state.isLoading) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: LoadingAnimationWidget.inkDrop(
                        color: AppColors.kGrey, size: 25),
                  ),
                );
              } else if (state.courses != null &&
                  state.courses!.data != null &&
                  state.courses!.data!.isNotEmpty) {
                return Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: state.courses!.data!.length,
                      itemBuilder: (context, index) {
                        final courses = state.courses!.data![index];
                        return ListTile(
                          title: Text(courses.course!),
                          subtitle: Text(courses.count.toString()),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.kGrey,
                            size: 16,
                          ),
                          contentPadding: const EdgeInsets.only(
                              left: 20, right: 20, top: 10),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CourseDetailsScreen(
                                      id: courses.id!,
                                    )));
                          },
                        );
                      }),
                );
              } else {
                return const Center(
                  child: Text('Courses not available'),
                );
              }
            })
          ],
        ));
  }
}
