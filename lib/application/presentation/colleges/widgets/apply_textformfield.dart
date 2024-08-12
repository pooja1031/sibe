import 'package:flutter/material.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';

class ApplyTextFormField extends StatelessWidget {
  const ApplyTextFormField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    required this.controller,
    this.maxlines,
    required this.keyboardType,
    this.isPassword = false,
  });

  final String hintText;
  final IconData? prefixIcon;
  final TextEditingController controller;
  final int? maxlines;
  final TextInputType keyboardType;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          style: TextStyle(color: AppColors.kBlack),
          keyboardType: keyboardType,
          maxLines: isPassword ? 1 : maxlines,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please fill $hintText';
            }
            if (keyboardType == TextInputType.number && value.length != 10) {
              return 'enter valid phone number';
            }
            return null;
          },
          controller: controller,
          decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.kBlack)),
            prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
            hintText: hintText,
            enabled: false,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
    );
  }
}
