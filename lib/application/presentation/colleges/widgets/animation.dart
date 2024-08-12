import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:study_in_banglore/application/presentation/bottom_navigation/main_page.dart';

class AnimationScreen extends StatelessWidget {
  const AnimationScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      Future.delayed(
        const Duration(seconds: 3),
        () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const MainPage()),
          );
        },
      );
    });
    return Scaffold(
      body: Center(
        child: LottieBuilder.asset(
          'asset/Animation - 1708492620048.json',
          fit: BoxFit.cover,
          height: size.width * 0.9,
        ),
      ),
    );
  }
}
