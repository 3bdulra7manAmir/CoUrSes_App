// ignore_for_file: deprecated_member_use

import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/Core/shared/custom_linear_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCoursesProgressCard extends StatelessWidget
{
  const CustomCoursesProgressCard({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: KMediaQuery(context).width * 0.9,
      height: 100.h,
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow:
        [
          BoxShadow(
            color: AppColors.kGreyColor.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Text('Learned today', style: TextStyle(fontSize: 14.sp,)),
    
            const SizedBox(height: 5,),
        
            Row(
              children:
              [
                Text('46min', style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
                Text('/60min', style: TextStyle(fontSize: 14.sp, )),
              ],
            ),
    
            const SizedBox(height: 10,),
        
            CustomLinearIndicator(width: 0.8, percent: 72 / 100, backgroundColor: AppColors.kGreyColor300, progressColor: AppColors.kOrgangeAccent)
    
            
          ],
        ),
      ),
    );
  }
}