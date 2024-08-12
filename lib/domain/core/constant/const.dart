import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';

late double sWidth;
void sizeFinder(BuildContext context) {
  final size = MediaQuery.of(context).size;
  sWidth = size.width;
}

const kWidth5 = SizedBox(
  width: 5,
);
const kWidth10 = SizedBox(
  width: 10,
);
const kWidth20 = SizedBox(
  width: 20,
);
const kWidth30 = SizedBox(
  width: 30,
);
const kWidth60 = SizedBox(
  width: 60,
);
const kWidth80 = SizedBox(
  width: 80,
);
const kHeight20 = SizedBox(
  height: 20,
);
const kHeight100 = SizedBox(
  height: 100,
);
const kHeight150 = SizedBox(
  height: 150,
);
const kHeight10 = SizedBox(
  height: 10,
);
const kHeight5 = SizedBox(
  height: 5,
);
const String errorMsg = 'Something went wrong, please try again';
TextStyle kronOne(
    {double fontSize = 0.035,
    FontWeight fontWeight = FontWeight.normal,
    Color color = AppColors.kBlack}) {
  return GoogleFonts.kronaOne(
      fontSize: fontSize * sWidth, fontWeight: fontWeight, color: color);
}
