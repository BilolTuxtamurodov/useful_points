import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:useful_points/controller/video_guide/video_guide_controller.dart';
import 'package:useful_points/data/storage/app/locals/app_mode_pref/app_mode_pref.dart';
import 'package:useful_points/data/storage/app/locals/words.dart';
import 'package:useful_points/data/tools/constants/images.dart';
import 'package:useful_points/data/tools/styles/app_colors.dart';
import 'package:useful_points/data/tools/styles/text_theme.dart';
import 'package:useful_points/views/widgets/custom_app_bar.dart';
import 'package:useful_points/views/widgets/custom_button.dart';
import 'package:useful_points/views/widgets/top_snack_bar.dart';
import 'package:useful_points/views/widgets/you_tube_modal.dart';

class VideoGuidePage extends StatelessWidget {
  const VideoGuidePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GetBuilder(
        init: VideoGuideController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Get.find<ModePrefs>().appMode ? AppColors.orangeBackground : AppColors.backgroundColorDark,
            appBar: CustomAppBar(
              title: Words.videoGuide.tr,
              backgroundColor: Get.find<ModePrefs>().appMode ? AppColors.orangeBackground : AppColors.backgroundColorDark,
            ),
            body: Stack(
              children: [
                SvgPicture.asset(CustomImages.backgroundCircles, height: size.height * .80,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => youTubeModal(context, Words.youtubeVideUlr),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 15.w),
                        padding: EdgeInsets.all(10.r),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(CustomImages.videoImage),
                            SizedBox(height: 5.h,),
                            Text(Words.videoInfo.tr, style: robotoBold.displayLarge?.copyWith(fontSize: 18.sp),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    const Spacer(),
                    InkWell(
                      onTap: () => controller.goToLoginToProfile(),
                      child: CustomButton(
                        title: Words.loginToProfile.tr,
                        titleColor: AppColors.black,
                        buttonColor: AppColors.white,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                      ),
                    ),
                    InkWell(
                      onTap: () => controller.goToReadTheBook(),
                      child: CustomButton(
                          title: Words.readBook.tr,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }
    );
  }
}
