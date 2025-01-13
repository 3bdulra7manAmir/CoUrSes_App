// ignore_for_file: unused_import, deprecated_member_use

import 'package:courses_app/Core/utils/app_router.dart';
import 'package:courses_app/Features/auth/login/login_view.dart';
import 'package:courses_app/Features/home/home_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main()
{
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
        
      ),
    );
  }
}
