// ignore_for_file: unused_import, deprecated_member_use

import 'package:courses_app/Core/utils/app_router.dart';
import 'package:courses_app/Features/auth/login/login_view.dart';
import 'package:courses_app/Features/home/home_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main()
{
      SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.brown,
      statusBarIconBrightness: Brightness.dark, // Icon color for dark/light status bar
      statusBarBrightness: Brightness.dark, // Adjust brightness for iOS
    )
  );
  
  runApp(
    ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (context, child) => const CoursesApp()
      ),
    );
}

class CoursesApp extends StatelessWidget
{
  const CoursesApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return DevicePreview(
      enabled: true,
      builder: (context) =>  MaterialApp.router(
        useInheritedMediaQuery: true, // deprecated_member_use

        builder: DevicePreview.appBuilder,
        locale: DevicePreview.locale(context),
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,

        theme: ThemeData.light().copyWith(textTheme: GoogleFonts.montserratAlternatesTextTheme(),),

        // theme: ThemeData.dark().copyWith(
        //   textTheme: GoogleFonts.montserratAlternatesTextTheme(
        //       ThemeData.dark().textTheme),
        // ),
        
      ),
    );
  }
}
