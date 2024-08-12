import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/auth/auth_bloc.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.prefixIcon,
    required this.controller,
    this.maxlines,
    required this.keyboardType,
  });

  final String labelText;
  final IconData? prefixIcon;
  final TextEditingController controller;
  final int? maxlines;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
          return TextFormField(
            keyboardType: keyboardType,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please fill $labelText';
              }
              if (keyboardType == TextInputType.number && value.length != 10) {
                return 'Enter a valid phone number';
              }
              return null;
            },
            controller: controller,
            decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.kBlack)),
              prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
              labelText: labelText,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          );
        }),
      ),
    );
  }
}
