import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
// import 'package:geolocator/geolocator.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/bloc/accommodation_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/colleges/colleges_bloc.dart';
import 'package:study_in_banglore/application/presentation/home/widgets/apply_screens/apply_accommodation.dart';
import 'package:study_in_banglore/application/presentation/utils/customs/cusom_app_bar.dart';
import 'package:study_in_banglore/application/presentation/utils/snack_bar/snack_bar.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';
import 'package:study_in_banglore/domain/models/accommodation_model/query_accommodation.dart';

class AccommodationList extends StatelessWidget {
  AccommodationList({super.key});
  var height, width;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    height = screenSize.height;
    width = screenSize.width;

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // Request the current position
      // Position position = await _determinePosition();

      // Define the radius
      // int radius = 10; // Adjust as needed

      // Dispatch the event to the bloc with the obtained location and radius
      context.read<AccommodationBloc>().add(
            AccommodationEvent.getAccommodation(
                queryModel: QueryAccommodation(
                    latitude: 12.9925,
                    longitude: 77.5784,
                    radius: 10,
                    page: 1,
                    city: context.read<CollegesBloc>().state.placeName,
                    limit: 100)),
          );
    });

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CustomAppBar(title: 'Accommodation Near Me'),
      ),
      body: BlocConsumer<AccommodationBloc, AccommodationState>(
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
                    color: AppColors.kGrey, size: 25),
              ),
            );
          } else if (state.accommodationModel != null &&
              state.accommodationModel!.data != null &&
              state.accommodationModel!.data!.isNotEmpty) {
            return Padding(
              padding: const EdgeInsets.only(top: 8),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final accommodation = state.accommodationModel!.data![index];
                  return ListTile(
                    leading: Container(
                      width: width * 0.3,
                      height: width * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(accommodation.logo!))),
                    ),
                    title: Text(
                      accommodation.title!,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(accommodation.distance.toString()),
                        Text(
                          accommodation.price!,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    trailing: ElevatedButton(
                     style:   ButtonStyle(
              
                                  backgroundColor:
                                      WidgetStatePropertyAll<Color>(
                                          AppColors.primaryColor)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ApplyAccommodationScreen(),
                          ));
                        },
                        child: Text('Apply',style: TextStyle(color: AppColors.kWhite),)),
                  );
                },
                itemCount: state.accommodationModel!.data!.length,
              ),
            );
          } else {
            return Center(
              child: Text('Accommodation Not Available'),
            );
          }
        },
      ),
    );
  }
}
