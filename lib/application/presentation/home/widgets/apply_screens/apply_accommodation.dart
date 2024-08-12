import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/apply/apply_bloc.dart';
import 'package:study_in_banglore/application/presentation/colleges/widgets/animation.dart';
import 'package:study_in_banglore/application/presentation/colleges/widgets/apply_textformfield.dart';
import 'package:study_in_banglore/application/presentation/utils/customs/cusom_app_bar.dart';
import 'package:study_in_banglore/application/presentation/utils/global_variable.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';
import 'package:study_in_banglore/domain/core/constant/const.dart';
import 'package:study_in_banglore/domain/models/apply_model/apply_model.dart';

class ApplyAccommodationScreen extends StatefulWidget {
  const ApplyAccommodationScreen({
    super.key,
  });

  @override
  State<ApplyAccommodationScreen> createState() =>
      _ApplyAccommodationScreenState();
}

class _ApplyAccommodationScreenState extends State<ApplyAccommodationScreen> {
  @override
  Widget build(BuildContext context) {
    final applyBloc = context.read<ApplyBloc>();
    bool isPlaceOrderClicked = false;
    applyBloc.nameController.text = userName;
    applyBloc.phoneController.text = phoneNum;
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: CustomAppBar(
              title: 'Apply',
            )),
        body: SingleChildScrollView(
          child: Form(
            key: applyBloc.applyKey,
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
                      controller: applyBloc.nameController,
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
                      controller: applyBloc.phoneController,
                      keyboardType: TextInputType.number),
                  kHeight10,
                  BlocConsumer<ApplyBloc, ApplyState>(
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
                              if (applyBloc.applyKey.currentState!.validate()) {
                                applyBloc.add(ApplyEvents(
                                    applyModel: ApplyModel(
                                        userId: userId,
                                        applyType: 'accommodation')));
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
