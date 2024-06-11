import 'package:flutter/material.dart';
import 'package:useful_points/data/tools/styles/app_colors.dart';
import 'package:useful_points/data/tools/styles/text_theme.dart';

class MyCustomMode {
  ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundColorDark,
    textTheme: robotoRegular.apply(
      displayColor: AppColors.white,
      bodyColor: AppColors.white,
    ),
    dividerColor: AppColors.white,
    appBarTheme: const AppBarTheme(
      surfaceTintColor: AppColors.backgroundColorDark,
      color: AppColors.backgroundColorDark,
    ),
    colorScheme: ColorScheme.dark(
      primary: AppColors.black,
      secondary: Colors.amber
    ),
  );

  ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    textTheme: robotoRegular.apply(
      displayColor: AppColors.black,
      bodyColor: AppColors.black,
    ),
    dividerColor: AppColors.black,
    appBarTheme: const AppBarTheme(
      surfaceTintColor: AppColors.backgroundColor,
      color: AppColors.backgroundColor,
    ),
    colorScheme: ColorScheme.light(
      primary: AppColors.white,
      secondary: Colors.amber
    ),
  );
}