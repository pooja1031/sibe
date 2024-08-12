import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SingleChildScrollView(
        child: LottieBuilder.asset('asset/Animation - 1713856431233.json',
            fit: BoxFit.cover, height: size.width * 0.4),
      ),
    );
  }
}
