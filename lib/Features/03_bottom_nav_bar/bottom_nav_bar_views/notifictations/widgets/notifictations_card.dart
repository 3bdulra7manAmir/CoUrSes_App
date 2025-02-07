
import 'package:courses_app/Core/utils/constants/app_colors.dart';
import 'package:courses_app/Core/utils/constants/app_images.dart';
import 'package:courses_app/Features/03_bottom_nav_bar/bottom_nav_bar_views/notifictations/widgets/notifictation_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNotifictations extends StatelessWidget
{
  const CustomNotifictations({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      decoration: BoxDecoration(color: AppColors.kWhiteColor, borderRadius: BorderRadius.circular(10.r),
        boxShadow:
        [
          BoxShadow(
            color: AppColors.kGreyColor.withAlpha((0.2 * 255).round()),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children:
          [
            const UserNotifictationContainer(),

            const SizedBox(width: 10,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text('Successful Purchase!', style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12.sp),),

                const SizedBox(height: 5,),

                Row(
                  children:
                  [
                    SvgPicture.asset(AppIMGs().kClockSVG),

                    const SizedBox(width: 5,),

                    Text('Just now', style:  TextStyle(fontSize: 10.sp),),
                  ],
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}

