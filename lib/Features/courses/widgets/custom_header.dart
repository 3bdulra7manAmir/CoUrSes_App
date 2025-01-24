import 'package:courses_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CoursesHeader extends StatelessWidget
{
  const CoursesHeader({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
      [
        Text('Courses', style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),

        SvgPicture.asset('assets/images/svg/Profile_Avatar_Without_Camera.svg', width: 35.w,),
      ],
    );
  }
}