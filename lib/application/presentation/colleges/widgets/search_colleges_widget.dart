import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/colleges/colleges_bloc.dart';
import 'package:study_in_banglore/domain/core/constant/const.dart';
import 'package:study_in_banglore/domain/models/colleges/query_college_model.dart';

class SearchCollegesWidget extends StatelessWidget {
  const SearchCollegesWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
        width: double.infinity,
        height: sWidth * 0.11,
        child: TextField(
          onChanged: (value) {
            context.read<CollegesBloc>().add(CollegesEvent.getColleges(
                    queryCollegeModel: QueryCollegeModel(
                  search: value,
                  location: context.read<CollegesBloc>().state.placeName,
                  page: 1,
                  limit: 30,
                )));
          },
          decoration: const InputDecoration(
            hintText: 'Search for colleges',
            hintStyle: TextStyle(fontSize: 15.0),
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              size: 18.0,
            ),
          ),
        ));
  }
}
