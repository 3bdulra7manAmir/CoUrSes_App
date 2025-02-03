import 'package:courses_app/Core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserNotifictationContainer extends StatelessWidget
{
  const UserNotifictationContainer({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.r),
      child: SizedBox(
        height: 45.h,
        width: KMediaQuery(context).width * 0.12,
        child: Container(color: AppColors.kCustomAllTabCardColor2,
        child: Center(child: SvgPicture.asset(AppIMGs().kVisaSVG),),
        ),
      ),
    );
  }
}