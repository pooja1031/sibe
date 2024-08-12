import 'package:flutter/material.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';
import 'package:study_in_banglore/domain/core/constant/const.dart';

class ContainerHomeWidget extends StatelessWidget {
  const ContainerHomeWidget(
      {super.key,
      required this.image,
      required this.text,
      required this.onTap});
  final String image;
  final String text;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image))),
            ),
          ),
          kHeight10,
          Text(
            text,
            style: const TextStyle(
                color: AppColors.kBlack,
                fontSize: 15,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
