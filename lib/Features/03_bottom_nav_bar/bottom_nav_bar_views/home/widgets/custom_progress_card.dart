
import 'package:courses_app/Core/shared/custom_linear_indicator.dart';
import 'package:courses_app/Core/utils/constants/app_colors.dart';
import 'package:courses_app/Core/utils/constants/app_responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeProgressCard extends StatelessWidget
{
  const CustomHomeProgressCard({super.key,});

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
            color: AppColors.kGreyColor.withAlpha((0.5 * 255).round()),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [
                Text('Learned today', style: TextStyle(fontSize: 14.sp,)),

                GestureDetector(
                  onTap: () {},
                  child: Text('My Courses', style: TextStyle(fontSize: 14.sp, color: AppColors().kButtonsBlueColor, fontWeight: FontWeight.bold))),
              ],
            ),
    
            const SizedBox(height: 5,),
        
            Row(
              children:
              [
                Text('46min', style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
                Text('/60min', style: TextStyle(fontSize: 14.sp, )),
              ],
            ),
    
            const SizedBox(height: 10,),
        
            CustomLinearIndicator(width: 0.8, percent: 72 / 100, backgroundColor: AppColors.kGreyColor300, progressColor: Colors.orangeAccent)
    
            
          ],
        ),
      ),
    );
  }
}