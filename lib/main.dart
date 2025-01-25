// ignore_for_file: deprecated_member_use

import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/app/app_router.dart';
import 'package:courses_app/firebase_options.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async
{
  // SystemChrome.setSystemUIOverlayStyle(
  //   const SystemUiOverlayStyle(
  //     statusBarColor: Colors.brown,
  //     statusBarIconBrightness: Brightness.dark, // Icon color for dark/light status bar
  //     statusBarBrightness: Brightness.dark, // Adjust brightness for iOS
  //   )
  // );
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  
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
      builder: (context) => MaterialApp.router(
        useInheritedMediaQuery: true, // deprecated_member_use

        builder: DevicePreview.appBuilder,
        locale: DevicePreview.locale(context),
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,

        theme: ThemeData.light().copyWith(textTheme: GoogleFonts.montserratAlternatesTextTheme(),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor:  kButtonsBlueColor,
          selectionColor: kButtonsBlueColor,
          selectionHandleColor: kButtonsBlueColor
          ),
        ),

        // theme: ThemeData.dark().copyWith(
        //   textTheme: GoogleFonts.montserratAlternatesTextTheme(
        //       ThemeData.dark().textTheme),
        // ),
        
      ),
    );
  }
}
