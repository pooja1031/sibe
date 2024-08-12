import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/colleges/colleges_bloc.dart';
import 'package:study_in_banglore/application/presentation/routes/routes.dart';
import 'package:study_in_banglore/application/presentation/utils/snack_bar/snack_bar.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';

class CollegesWidgetCo extends StatelessWidget {
  const CollegesWidgetCo({super.key, required this.id});
  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CollegesBloc, CollegesState>(
        listener: (context, state) {
      if (state.hasError) {
        showSnack(
            context: context, message: state.message!, color: AppColors.kRed);
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
      } else if (state.colleges != null &&
          state.colleges!.data != null &&
          state.colleges!.data!.isNotEmpty) {
        return Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: state.colleges!.data!.length,
              itemBuilder: (context, index) {
                final colleges = state.colleges!.data![index];
                return ListTile(
                  title: Text(
                    colleges.college!,
                    style: const TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        colleges.place!,
                        style: const TextStyle(color: AppColors.kGrey),
                      ),
                      Text("Ranking:${colleges.ranking ?? 5.7.round()}/10",
                          style: const TextStyle(color: AppColors.kGrey)),
                      Text("Established:${colleges.establish}",
                          style: const TextStyle(color: AppColors.kGrey))
                    ],
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.kGrey,
                    size: 16,
                  ),
                  contentPadding:
                      const EdgeInsets.only(left: 20, right: 20, top: 10),
                  onTap: () {
                    Navigator.of(context).pushNamed(Routes.collegeDetails,
                        arguments: colleges.id);
                  },
                );
              }),
        );
      } else {
        return const Center(
          child: Text('Colleges not available'),
        );
      }
    });
  }
}
