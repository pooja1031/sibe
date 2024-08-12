import 'package:flutter/material.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, this.leading, required this.title, this.trailing});
  final IconButton? leading;
  final String title;
  final IconButton? trailing;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: AppColors.primaryColor,
      leading: leading,
      iconTheme: const IconThemeData(color: AppColors.kWhite),
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.kWhite),
      ),
      actions: [if (trailing != null) trailing!],
    );
  }
}
