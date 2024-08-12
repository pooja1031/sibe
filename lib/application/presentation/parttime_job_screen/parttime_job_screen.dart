import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/colleges/colleges_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/parttime_job/parrtime_job_bloc.dart';
import 'package:study_in_banglore/application/presentation/home/widgets/apply_screens/apply_screen.dart';
import 'package:study_in_banglore/application/presentation/utils/customs/cusom_app_bar.dart';
import 'package:study_in_banglore/application/presentation/utils/snack_bar/snack_bar.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';
import 'package:study_in_banglore/domain/core/constant/const.dart';
import 'package:study_in_banglore/domain/models/query_model/query_model.dart';

class ParttimeJobScreen extends StatelessWidget {
  const ParttimeJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ParrtimeJobBloc>().add(
            ParrtimeJobEvent.parttimeJob(
              queryModel: QueryModel(page: 1, limit: 30,location: context.read<CollegesBloc>().state.placeName),
            ),
          );
    });
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: CustomAppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back)),
              title: 'ParttimeJob')),
      body: BlocConsumer<ParrtimeJobBloc, ParrtimeJobState>(
        listener: (context, state) {
          if (state.hasError) {
            showSnack(
                context: context,
                message: state.message!,
                color: AppColors.kRed);
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
          } else if (state.parttimeJob != null &&
              state.parttimeJob!.data != null &&
              state.parttimeJob!.data!.isNotEmpty) {
            return ListView.builder(
              itemCount: state.parttimeJob!.data!.length,
              itemBuilder: (context, index) {
                final parttime = state.parttimeJob!.data![index];
                return Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          width: sWidth * 1,
                          height: sWidth * 0.5,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(parttime.logo!))),
                        ),
                        ListTile(
                          title: Text(
                            parttime.title!,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(parttime.place!),
                          trailing: ElevatedButton(
                              style: const ButtonStyle(
                                  fixedSize: WidgetStatePropertyAll<Size>(
                                      Size(100, 30)),
                                  backgroundColor:
                                      WidgetStatePropertyAll<Color>(
                                          AppColors.primaryColor)),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const ApplyScreen(),
                                ));
                              },
                              child: const Text(
                                'Apply',
                                style: TextStyle(color: AppColors.kWhite),
                              )),
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: Text('ParttimeJob Not Available'),
            );
          }
        },
      ),
    );
  }
}
