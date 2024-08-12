import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/colleges/colleges_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/courses/category_courses_bloc.dart';
import 'package:study_in_banglore/domain/core/constant/const.dart';
import 'package:study_in_banglore/domain/models/category_courses/courses/courses_query_model.dart';

class CoustomSearchTypeField extends StatelessWidget {
  const CoustomSearchTypeField({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
        width: double.infinity,
        height: sWidth * 0.11,
        child: TextField(
          onChanged: (value) {
            context.read<CategoryCoursesBloc>().add(
                CategoryCoursesEvent.getCourses(
                    coursesQueryModel: CoursesQueryModel(
                        search: value, page: 1, limit: 30, id: id,city: context.read<CollegesBloc>().state.placeName)));
          },
          decoration: const InputDecoration(
            hintText: 'Search for course',
            hintStyle: TextStyle(fontSize: 15.0, color: Colors.black12),
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              size: 20.0,
            ),
          ),
        ));
  }
}
