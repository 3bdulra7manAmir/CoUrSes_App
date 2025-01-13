import 'package:courses_app/Core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles
{
  static TextStyle textStyle30 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w900,
    fontFamily: kGtSectraFine,
  );

  static TextStyle textStyle20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.normal,
  );

  static TextStyle textStyle18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle textStyle16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    //fontFamily:  kGtSectraFine,
  );

  static TextStyle textStyle14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: Color(0xff858597),
  );
}
