
import 'package:flutter/material.dart';
import 'package:islami/islami_app/core/utils/app_colors.dart';
class myDivider extends StatelessWidget {
  const myDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 3.0,
      color: AppColors.primarycolor,
    );
  }
}