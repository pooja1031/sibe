import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/profile/profile_bloc.dart';
import 'package:study_in_banglore/application/presentation/home/widgets/places_widget.dart';
import 'package:study_in_banglore/application/presentation/utils/global_variable.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.3, 
      color: AppColors.primaryColor,
      child: BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
        if (state.isLoading) {
          return Center(
            child: Padding(
              padding: EdgeInsets.all(screenSize.width * 0.02), 
              child: LoadingAnimationWidget.inkDrop(
                color: AppColors.kGrey,
                size: screenSize.width * 0.06, 
              ),
            ),
          );
        } else if (state.profileModel != null &&
            state.profileModel!.data != null) {
          userId = state.profileModel!.data!.id!;
          userName =
              "${state.profileModel!.data!.firstName} ${state.profileModel!.data!.lastName}";
          phoneNum = state.profileModel!.data!.phoneNumber!;
          return Padding(
            padding: EdgeInsets.only(
              top: screenSize.height * 0.05,
              left: screenSize.width * 0.06,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: screenSize.height * 0.04, 
                  child: Icon(
                    Icons.person,
                    size: screenSize.width * 0.08, 
                  ),
                ),
                SizedBox(width: screenSize.width * 0.03),
                Padding(
                  padding: EdgeInsets.only(left: screenSize.width * 0.01), 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Hi ${state.profileModel!.data!.firstName},',
                            style: TextStyle(
                              color: AppColors.kWhite,
                              fontWeight: FontWeight.w100,
                              fontSize: screenSize.width * 0.04,
                            ),
                          ),
                          SizedBox(width: screenSize.width * 0.15),
                          PlacesWidget()
                        ],
                      ),
                      Text(
                        '${state.profileModel!.data!.firstName} ${state.profileModel!.data!.lastName}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.kWhite,
                          fontSize: screenSize.width * 0.06, 
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        } else {
          return Center(
            child: Text(
              'Profile not available',
              style: TextStyle(
                color: AppColors.kWhite,
                fontSize: screenSize.width * 0.04, 
              ),
            ),
          );
        }
      }),
    );
  }
}
