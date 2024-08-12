import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/auth/auth_bloc.dart';
import 'package:study_in_banglore/application/presentation/routes/routes.dart';
import 'package:study_in_banglore/application/presentation/utils/customs/cusom_app_bar.dart';
import 'package:study_in_banglore/application/presentation/utils/customs/custom_textformfield.dart';
import 'package:study_in_banglore/application/presentation/utils/global_variable.dart';
import 'package:study_in_banglore/application/presentation/utils/snack_bar/message_snack.dart';
import 'package:study_in_banglore/application/presentation/utils/snack_bar/snack_bar.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';
import 'package:study_in_banglore/domain/core/constant/const.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {

    final signupBloc = context.read<AuthBloc>();
    final GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
    phoneNum = signupBloc.phnNumController.text;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(56),
            child: CustomAppBar(
              title: 'Sign Up',
              leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        Routes.signInPage, (route) => false);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: AppColors.kWhite,
                  )),
            )),
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: signUpFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  kHeight10,
                  CustomTextFormField(
                      controller: signupBloc.firstNameController,
                      labelText: 'First Name',
                      keyboardType: TextInputType.name),
                  kHeight20,
                  CustomTextFormField(
                      controller: signupBloc.lastNameController,
                      labelText: 'Last Name',
                      keyboardType: TextInputType.name),
                  kHeight20,
                  CustomTextFormField(
                      controller: signupBloc.phnNumController,
                      labelText: 'Phone Number',
                      keyboardType: TextInputType.number),
                  BlocConsumer<AuthBloc, AuthState>(
                    listener: (context, state) {
                      if (state.hasError) {
                        showSnack(
                            context: context,
                            message: state.message!,
                            color: AppColors.kRed);
                      }
                      if (state.signUpRespModel != null) {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            Routes.signInPage, (route) => false);
                      } else if (state.hasError && state.message != null) {
                        messageSnackbar(
                            context: context,
                            message: state.message!,
                            isError: true);
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
                      }
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            if (signUpFormKey.currentState!.validate()) {
                              signupBloc.add(const SignUP());
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF015d6f),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text('SignUp',
                              style: TextStyle(color: AppColors.kWhite)),
                        ),
                      );
                    },
                  ),
                  // kHeight10,
                  // const Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text("OR"),
                  //   ],
                  // ),
                  //  kHeight10,
                  //   ElevatedButton.icon(
                  //     style: ElevatedButton.styleFrom(
                  //       backgroundColor: const Color(0xFF015d6f),
                  //       shape: const StadiumBorder(),
                  //       elevation: 1,
                  //     ),
                  //     onPressed: () {
                  //       //Get.toNamed(AppRoutes.home);
                  //     },
                  //     icon: Image.asset("assets/google.png", height: Get.height * .03),
                  //     label: RichText(
                  //       text: const TextSpan(
                  //         style: TextStyle(color: AppColors.kWhite, fontSize: 16),
                  //         children: [
                  //           TextSpan(text: 'Signup with '),
                  //           TextSpan(
                  //             text: 'Google',
                  //             style: TextStyle(fontWeight: FontWeight.w500),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  kHeight20,
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.kGrey),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(Routes.signInPage);
                          },
                          child: const Text(
                            "LOGIN",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: AppColors.kBlack),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
