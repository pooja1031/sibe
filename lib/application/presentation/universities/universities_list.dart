import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/colleges/colleges_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/universities/universities_bloc.dart';
import 'package:study_in_banglore/application/presentation/routes/routes.dart';
import 'package:study_in_banglore/application/presentation/universities/widgets/search_university_widget.dart';
import 'package:study_in_banglore/application/presentation/utils/customs/cusom_app_bar.dart';
import 'package:study_in_banglore/application/presentation/utils/snack_bar/snack_bar.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';
import 'package:study_in_banglore/domain/models/query_search_model/query_search_model.dart';

class UniversitiesTile extends StatelessWidget {
  const UniversitiesTile({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<UniversitiesBloc>().add(
            UniversitiesEvent.getUniversities(
                queryModel: QuerySearchModel(page: 1, limit: 100,location: context.read<CollegesBloc>().state.placeName)),
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
              title: 'Universities')),
      body: Column(
        children: [
          const SearchUniversityWidget(),
          Expanded(
            child: BlocConsumer<UniversitiesBloc, UniversitiesState>(
              listener: (context, state) {
                if (state.hasError) {
                  showSnack(
                    context: context,
                    message: state.message!,
                    color: AppColors.kRed,
                  );
                }
              },
              builder: (context, state) {
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
                } else if (state.universities != null &&
                    state.universities!.data != null &&
                    state.universities!.data!.isNotEmpty) {
                  return ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: state.universities!.data!.length,
                    itemBuilder: (context, index) {
                      final courses = state.universities!.data![index];
                      return ListTile(
                        leading: CircleAvatar(
                            radius: 30,
                            child: courses.logo != null
                                ? Image.network(courses.logo!)
                                : Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: LoadingAnimationWidget.inkDrop(
                                        color: AppColors.kBlack,
                                        size: 10,
                                      ),
                                    ),
                                  )),
                        title: Text(courses.name!),
                        subtitle: Text(courses.place ?? 'Kochi'),
                        contentPadding: const EdgeInsets.all(8),
                        onTap: () {
                          Navigator.of(context).pushNamed(Routes.colleges,
                              arguments: courses.id!);
                        },
                      );
                    },
                  );
                } else {
                  return const Center(
                    child: Text('Universities not available'),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
