import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:useful_points/data/tools/styles/text_theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      centerTitle: true,
      title: Text(title, style: robotoRegular.displayMedium?.copyWith(fontSize: 20.sp),),
      toolbarHeight: 60.h,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
