// ignore_for_file: deprecated_member_use

import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/notifictations/widgets/notifictation_container.dart';
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
            color: AppColors.kGreyColor.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 2), // changes position of shadow
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
                    SvgPicture.asset('assets/images/svg/Clock.svg'),

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

