import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/colleges/colleges_bloc.dart';
import 'package:study_in_banglore/application/presentation/colleges/widgets/add_courses_drop_down.dart';
import 'package:study_in_banglore/application/presentation/colleges/widgets/animation.dart';
import 'package:study_in_banglore/application/presentation/colleges/widgets/apply_textformfield.dart';
import 'package:study_in_banglore/application/presentation/utils/customs/cusom_app_bar.dart';
import 'package:study_in_banglore/application/presentation/utils/global_variable.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';
import 'package:study_in_banglore/domain/core/constant/const.dart';
import 'package:study_in_banglore/domain/models/colleges/apply_college/data/data.dart';

class ApplyCollegeScreen extends StatefulWidget {
  final int collegeId;
  String name;
  ApplyCollegeScreen({
    super.key,
    required this.collegeId,
    required this.name,
  });

  @override
  State<ApplyCollegeScreen> createState() => _ApplyCollegeScreenState();
}

class _ApplyCollegeScreenState extends State<ApplyCollegeScreen> {
  @override
  Widget build(BuildContext context) {
    final collegeBloc = context.read<CollegesBloc>();
    collegeBloc.collegeNameController.text = widget.name;
    collegeBloc.fullNameController.text = userName;
    collegeBloc.phoneNumController.text = phoneNum;

    bool isPlaceOrderClicked = false;
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: CustomAppBar(
              title: 'Apply',
            )),
        body: SingleChildScrollView(
          child: Form(
            key: collegeBloc.collegeKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text('Full Name'),
                        Text(
                          ' *',
                          style: TextStyle(color: AppColors.kRed),
                        ),
                      ],
                    ),
                  ),
                  ApplyTextFormField(
                      hintText: 'Name',
                      controller: collegeBloc.fullNameController,
                      keyboardType: TextInputType.name),
                  kHeight10,
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text('Phone Number'),
                        Text(
                          ' *',
                          style: TextStyle(color: AppColors.kRed),
                        ),
                      ],
                    ),
                  ),
                  ApplyTextFormField(
                      hintText: 'Phone Number',
                      controller: collegeBloc.phoneNumController,
                      keyboardType: TextInputType.number),
                  kHeight10,
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text('Course Name'),
                        Text(
                          ' *',
                          style: TextStyle(color: AppColors.kRed),
                        ),
                      ],
                    ),
                  ),
                  AddCoursesDropDownWidget(
                    id: widget.collegeId,
                    onCourseSelected: (courseId) {
                      setState(() {
                        id = courseId;
                      });
                    },
                  ),
                  kHeight10,
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('College Name'),
                  ),
                  ApplyTextFormField(
                      hintText: 'College Name',
                      controller: collegeBloc.collegeNameController,
                      keyboardType: TextInputType.name),
                  kHeight10,
                  BlocConsumer<CollegesBloc, CollegesState>(
                      listener: (context, state) {
                    // if (state.hasError) {
                    //   showSnack(
                    //       context: context,
                    //       message: state.message!,
                    //       color: AppColors.kRed);
                    // }
                    if (isPlaceOrderClicked && state.isDone) {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const AnimationScreen(),
                        ),
                        (route) => false,
                      );
                    }
                  }, builder: (context, state) {
                    if (state.isLoading) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: LoadingAnimationWidget.inkDrop(
                            color: AppColors.kGrey,
                            size: 25,
                          ),
                        ),
                      );
                    }

                    return Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all<Color>(
                                        AppColors.primaryColor),
                                fixedSize: WidgetStateProperty.all<Size>(
                                    const Size(120, 40))),
                            onPressed: () {
                              if (collegeBloc.collegeKey.currentState!
                                  .validate()) {
                                collegeBloc.add(ApplyCollegeEvent(
                                    queryApplyModel: QueryApplyModel(
                                  userId: userId,
                                  courseId: id,
                                  collegeId: widget.collegeId,
                                )));
                                isPlaceOrderClicked = true;
                              }
                            },
                            child: const Text(
                              'Apply',
                              style: TextStyle(color: AppColors.kWhite),
                            )),
                      ],
                    );
                  })
                ],
              ),
            ),
          ),
        ));
  }
}
