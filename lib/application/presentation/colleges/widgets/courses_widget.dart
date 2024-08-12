import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/courses/category_courses_bloc.dart';
import 'package:study_in_banglore/application/presentation/utils/controller/expansion_controller.dart';
import 'package:study_in_banglore/domain/models/category_courses/courses/courses_query_model.dart';

class CoursesWidget extends GetView<ExpansionPanelController> {
  const CoursesWidget({super.key, required this.id});
  final int? id;
  @override
  ExpansionPanelController get controller => ExpansionPanelController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<CategoryCoursesBloc>().add(CategoryCoursesEvent.getCourses(
            coursesQueryModel:
                CoursesQueryModel(page: 1, limit: 30, collegId: id),
          ));
    });
    final Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Obx(() => ExpansionTile(
              title: const Text("Courses",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              trailing: Icon(controller.isExpanded.value
                  ? Icons.arrow_drop_down
                  : Icons.arrow_drop_up),
              children: [
                BlocBuilder<CategoryCoursesBloc, CategoryCoursesState>(
                  builder: (context, state) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: SizedBox(
                        height: screenSize.height * 0.4,
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              return Text(state.courses!.data![index].course!);
                            },
                            separatorBuilder: (context, index) =>
                                const Divider(),
                            itemCount: state.courses!.data!.length),
                      ),
                    );
                  },
                ),
              ],
              onExpansionChanged: (bool expanded) {
                controller.toggleExpansion();
              },
            )),
      ],
    );
  }
}
