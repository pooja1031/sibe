import 'package:flutter/material.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';

void messageSnackbar(
    {required BuildContext context,
    required String message,
    bool isError = true}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    backgroundColor: isError ? AppColors.kRed : Colors.green,
  ));
}
