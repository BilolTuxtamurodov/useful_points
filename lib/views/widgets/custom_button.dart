import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:useful_points/data/storage/app/locals/words.dart';
import 'package:useful_points/data/tools/styles/app_colors.dart';
import 'package:useful_points/data/tools/styles/text_theme.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color buttonColor;
  final Color titleColor;
  final EdgeInsets margin;
  const CustomButton({super.key, required this.title, this.buttonColor = AppColors.orangeButtonColor, this.titleColor = AppColors.white, this.margin = const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10)});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin.r,
      height: 56.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        color: buttonColor,
      ),
      child: Text(title, style: robotoMedium.displayLarge?.copyWith(color: titleColor),),
    );
  }
}
