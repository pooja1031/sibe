import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/colleges/colleges_bloc.dart';
import 'package:study_in_banglore/application/presentation/colleges/colleges_details.dart';
import 'package:study_in_banglore/application/presentation/utils/snack_bar/snack_bar.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';

class CollegesWidgets extends StatelessWidget {
  const CollegesWidgets({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sWidth = screenSize.width;

    return BlocConsumer<CollegesBloc, CollegesState>(
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
              padding: EdgeInsets.all(screenSize.width * 0.03), // Responsive padding
              child: LoadingAnimationWidget.inkDrop(
                color: AppColors.kGrey,
                size: screenSize.width * 0.06, // Responsive size
              ),
            ),
          );
        } else if (state.colleges != null &&
            state.colleges!.data != null &&
            state.colleges!.data!.isNotEmpty) {
          return Expanded(
            child: ListView.builder(
              itemCount: state.colleges!.data!.length,
              itemBuilder: (context, index) {
                final college = state.colleges!.data![index];
                return Padding(
                  padding: EdgeInsets.all(screenSize.width * 0.02), // Responsive padding
                  child: Container(
                    height: sWidth * 0.4,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(screenSize.width * 0.05), // Responsive radius
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: screenSize.width * 0.04, // Responsive left padding
                        right: screenSize.width * 0.02, // Responsive right padding
                        top: screenSize.height * 0.025, // Responsive top padding
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  college.college!,
                                  style: TextStyle(
                                    color: AppColors.kWhite,
                                    fontSize: screenSize.width * 0.045, // Responsive font size
                                  ),
                                  maxLines: 2,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Iconsax.save_minus4,
                                  size: screenSize.width * 0.08, // Responsive icon size
                                  color: AppColors.kGrey,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            college.place ?? 'Kochi',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenSize.width * 0.04, // Responsive font size
                            ),
                            maxLines: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '${college.rating}',
                                    style: TextStyle(
                                      fontSize: screenSize.width * 0.04, // Responsive font size
                                      color: AppColors.kWhite,
                                    ),
                                  ),
                                  SizedBox(width: screenSize.width * 0.01), // Responsive width
                                  RatingBar.builder(
                                    initialRating: college.rating!.toDouble(),
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: screenSize.width * 0.05, // Responsive item size
                                    itemPadding: EdgeInsets.symmetric(
                                      horizontal: screenSize.width * 0.01, // Responsive item padding
                                    ),
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 20,
                                    ),
                                    onRatingUpdate: (rating) {},
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (ctx) => CollegesDetailsScreen(
                                        id: college.id!,
                                      ),
                                    ),
                                  );
                                },
                                style: ButtonStyle(
                                  minimumSize: WidgetStateProperty.all<Size>(
                                    Size(
                                      screenSize.width * 0.2, // Responsive width
                                      screenSize.height * 0.05, // Responsive height
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "Explore",
                                  style: TextStyle(
                                    color: AppColors.kBlack,
                                    fontSize: screenSize.width * 0.04, // Responsive font size
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        } else {
          return Center(
            child: Text(
              'Colleges Not Available',
              style: TextStyle(
                color: AppColors.kBlack,
                fontSize: screenSize.width * 0.04, // Responsive font size
              ),
            ),
          );
        }
      },
    );
  }
}
