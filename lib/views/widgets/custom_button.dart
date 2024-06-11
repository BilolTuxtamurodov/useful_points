import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:useful_points/data/storage/app/locals/strings.dart';
import 'package:useful_points/data/tools/styles/app_colors.dart';
import 'package:useful_points/data/tools/styles/text_theme.dart';

class CustomButton extends StatelessWidget {
  final String title;
  const CustomButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.h),
      height: 56.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        color: AppColors.orangeButtonColor,
      ),
      child: Text(Words.actionContinue.tr, style: robotoMedium.displayLarge?.copyWith(color: AppColors.white),),
    );
  }
}
