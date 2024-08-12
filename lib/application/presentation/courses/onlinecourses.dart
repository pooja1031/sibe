import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/colleges/colleges_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/courses/category_courses_bloc.dart';
import 'package:study_in_banglore/application/presentation/courses/courses_type_screen/courses_type_screen.dart';
import 'package:study_in_banglore/application/presentation/courses/widgets/courses_search/courses_search.dart';
import 'package:study_in_banglore/application/presentation/utils/customs/cusom_app_bar.dart';
import 'package:study_in_banglore/application/presentation/utils/snack_bar/snack_bar.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';
import 'package:study_in_banglore/domain/models/category_courses/category_courses_query.dart';

class OnlineCourses extends StatelessWidget {
  OnlineCourses({super.key});
  var height, width;
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    height = screenSize.height;
    width = screenSize.width;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CategoryCoursesBloc>().add(
            CategoryCoursesEvent.getCategoryCourses(
              queryModel:
                  CategoryCourseQuery(page: 1,
                   limit: 100,
                   courseMode: 'Online',
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
                title: 'Online Courses')),
        body: Column(
          children: [
            const CoustomSearchField(),
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
              } else if (state.categoryCourses != null &&
                  state.categoryCourses!.data != null &&
                  state.categoryCourses!.data!.isNotEmpty) {
                return Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: state.categoryCourses!.data!.length,
                      itemBuilder: (context, index) {
                        final courses = state.categoryCourses!.data![index];
                        return ListTile(
                          leading: CircleAvatar(
                              radius: 25,
                              child: courses.image != null
                                  ? Image.network(courses.image!)
                                  : Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: LoadingAnimationWidget.inkDrop(
                                            color: AppColors.kBlack, size: 10),
                                      ),
                                    )),
                          title: Text(
                            courses.name!,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(courses.count!),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.kGrey,
                            size: 16,
                          ),
                          contentPadding: const EdgeInsets.only(
                              left: 20, right: 20, top: 10),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CoursesTypeScreen(
                                  id: courses.id!, name: courses.name!),
                            ));
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
