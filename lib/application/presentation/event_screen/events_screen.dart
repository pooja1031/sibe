import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/Events/events_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/colleges/colleges_bloc.dart';
import 'package:study_in_banglore/application/presentation/home/widgets/apply_screens/apply_events.dart';
import 'package:study_in_banglore/application/presentation/utils/customs/cusom_app_bar.dart';
import 'package:study_in_banglore/application/presentation/utils/snack_bar/snack_bar.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';
import 'package:study_in_banglore/domain/core/constant/const.dart';
import 'package:study_in_banglore/domain/models/query_model/query_model.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<EventsBloc>().add(
            EventsEvent.getEvents(
              queryModel: QueryModel(page: 1, limit: 30,),
            ),
          );
    });
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: CustomAppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back)),
              title: 'Events')),
      body: BlocConsumer<EventsBloc, EventsState>(
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
          } else if (state.eventsModel != null &&
              state.eventsModel!.data != null &&
              state.eventsModel!.data!.isNotEmpty) {
            return ListView.builder(
              itemCount: state.eventsModel!.data!.length,
              itemBuilder: (context, index) {
                final parttime = state.eventsModel!.data![index];
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
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(parttime.place!),
                          trailing: ElevatedButton(
                              style: ButtonStyle(
                                  fixedSize: WidgetStatePropertyAll<Size>(
                                      Size(100, 30)),
                                  backgroundColor:
                                      WidgetStatePropertyAll<Color>(
                                          AppColors.primaryColor)),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ApplyEventScreen(),
                                ));
                              },
                              child: Text(
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
            return Center(
              child: Text('Events Not Available'),
            );
          }
        },
      ),
    );
  }
}
