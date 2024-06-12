import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:useful_points/data/tools/constants/images.dart';
import 'package:useful_points/data/tools/styles/app_colors.dart';
import 'package:useful_points/data/tools/styles/text_theme.dart';

void showSnackBar({required String title, String subtitle = '', Duration? duration, bool isError = false}) {
  ScaffoldMessenger.of(Get.context!)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(bottom: MediaQuery.of(Get.context!).size.height * .83, left: 15.w, right: 15.w),
        shape:  RoundedRectangleBorder(
          side: BorderSide(
            color: isError ? AppColors.redDark : AppColors.greenDark,
          ),
          borderRadius: BorderRadius.circular(4.r), //<-- SEE HERE
        ),
        duration: duration ?? const Duration(seconds: 5),
        backgroundColor: isError ? AppColors.redDark : AppColors.greenDark,
        content: Row(
          children: [
            isError ? SvgPicture.asset(CustomImages.warningIcon) : SvgPicture.asset(CustomImages.checkIcon, color: AppColors.white,),
            SizedBox(width: 12.w,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: robotoMedium.displayLarge?.copyWith(
                    color: AppColors.white,
                    fontSize: 16.sp,
                  ),
                ),
                subtitle.isNotEmpty ?
                    Text(
                      subtitle,
                      style: robotoLight.displayMedium?.copyWith(
                        color: AppColors.whiteLight,
                      ),
                    ) :
                    const SizedBox.shrink(),
              ],
            ),
          ],
        ),
      ),
    );
}