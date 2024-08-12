// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:study_in_banglore/application/bussiness_logic/bloc/colleges/colleges_bloc.dart';
import 'package:study_in_banglore/application/presentation/colleges/widgets/colleges_widget.dart';
import 'package:study_in_banglore/application/presentation/colleges/widgets/search_colleges_widget.dart';
import 'package:study_in_banglore/application/presentation/utils/customs/cusom_app_bar.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';
import 'package:study_in_banglore/domain/models/colleges/query_college_model.dart';

class CollegesScreen extends StatelessWidget {
  const CollegesScreen({
    super.key,
    this.id,
  });
  final int? id;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CollegesBloc>().add(
            CollegesEvent.getColleges(
                queryCollegeModel: QueryCollegeModel(
              universityId: id,
              location: context.read<CollegesBloc>().state.placeName
            )),
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
            ),
          ),
          title: 'Colleges',
        ),
      ),
      body: const Column(
        children: [SearchCollegesWidget(), CollegesWidgets()],
      ),
    );
  }
}
