import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          // translations: LangService(),
          // locale: LangService.defaultLanguage(),
          // fallbackLocale: LangService.fallbackLocale,
          title: 'Foydali nuqtalar',
          // theme: MyCustomMode().lightTheme,
          home: Scaffold(
            body: Center(child: Text('hello'),),
          ),
        );
      },
    );
  }
}