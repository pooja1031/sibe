import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/courses/category_courses_bloc.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';
import 'package:study_in_banglore/domain/models/category_courses/courses/courses_query_model.dart';

class AddCoursesDropDownWidget extends StatefulWidget {
  const AddCoursesDropDownWidget(
      {super.key, required this.id, required this.onCourseSelected});
  final int id;
  final void Function(int courseId) onCourseSelected;
  @override
  _AddCoursesDropDownWidgetState createState() =>
      _AddCoursesDropDownWidgetState();
}

class _AddCoursesDropDownWidgetState extends State<AddCoursesDropDownWidget> {
  
  String? _selectedCourse;
  int? _selectedCourseId;
  @override
  Widget build(BuildContext context) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<CategoryCoursesBloc>().add(CategoryCoursesEvent.getCourses(
            coursesQueryModel:
                CoursesQueryModel(page: 1, limit: 30, collegId: widget.id),
          ));
    });
    return BlocBuilder<CategoryCoursesBloc, CategoryCoursesState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              readOnly: true,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Select Course'),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(
                                Icons.cancel_outlined,
                                color: AppColors.kBlack,
                              )),
                        ],
                      ),
                      content: SizedBox(
                        width: double.maxFinite,
                        child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return const Divider();
                          },
                          itemCount: state.courses!.data!.length,
                          itemBuilder: (BuildContext context, int index) {
                            var courseName = state.courses!.data![index].course;
                            return ListTile(
                              title: Text(courseName!),
                              onTap: () {
                                setState(() {
                                  _selectedCourse = courseName;
                                  _selectedCourseId =
                                      state.courses!.data![index].id;
                                });
                                widget.onCourseSelected(_selectedCourseId!);
                                Navigator.pop(context);
                              },
                            );
                          },
                        ),
                      ),
                    );
                  },
                );
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.kBlack)),
                hintText: 'Courses',
                suffixIcon: const Icon(Icons.arrow_drop_down),
              ),
              controller: TextEditingController(
                text: _selectedCourse,
              ),
            ),
          ),
        );
      },
    );
  }
}
