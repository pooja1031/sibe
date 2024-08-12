import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/auth/auth_bloc.dart';
import 'package:study_in_banglore/application/presentation/routes/routes.dart';
import 'package:study_in_banglore/application/presentation/utils/customs/cusom_app_bar.dart';
import 'package:study_in_banglore/application/presentation/utils/customs/custom_textformfield.dart';
import 'package:study_in_banglore/application/presentation/utils/snack_bar/message_snack.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';
import 'package:study_in_banglore/domain/core/constant/const.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final signin = context.read<AuthBloc>();
    final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: CustomAppBar(title: 'Sign-In')),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: loginFormKey,
            child: Column(
              children: [
                CustomTextFormField(
                    controller: signin.phnNumController,
                    labelText: 'Phone Number',
                    keyboardType: TextInputType.number),
                kHeight20,
                BlocConsumer<AuthBloc, AuthState>(
                  listener: (context, state) {
                    if (state.message == 'Login Successfully') {
                      messageSnackbar(
                          context: context,
                          message: state.message!,
                          isError: false);
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        Routes.mainpage,
                        (route) => false,
                      );
                    } else if (state.hasError) {
                      messageSnackbar(
                        context: context,
                        message: state.message!,
                        isError: true,
                      );
                    } else if (state.message == 'Whwww') {
                      messageSnackbar(
                          context: context,
                          message: 'Please Create an account',
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
                          if (loginFormKey.currentState!.validate()) {
                            signin.add(const SignIn());
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF015d6f),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text('LOGIN',
                            style: TextStyle(color: AppColors.kWhite)),
                      ),
                    );
                  },
                ),
                kHeight20,
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have account?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.kGrey),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(Routes.register);
                        },
                        child: const Text(
                          "Sign up",
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
      ),
    );
  }
}
