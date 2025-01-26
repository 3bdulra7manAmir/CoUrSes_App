// ignore_for_file: deprecated_member_use

import 'package:courses_app/Core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CustomHomeLearnPlanCard extends StatelessWidget
{
  const CustomHomeLearnPlanCard({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: KMediaQuery(context).width * 0.9,
      height: 95.h,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow:
        [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),

      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [
                Row(
                  children:
                  [
                    CircularPercentIndicator(
                      radius: 15.0,
                      lineWidth: 4.0,
                      percent: 0.8,
                      progressColor: Colors.grey[700],
                    ),

                    const SizedBox(width: 5,),

                    Text('Packaging Design', style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
                  ],
                ),

                Row(
                  children:
                  [
                    Text('40', style: TextStyle(fontSize: 16.sp, color: Colors.black, fontWeight: FontWeight.bold)),
                    Text('/48', style: TextStyle(fontSize: 14.sp, color: Colors.grey, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [
                Row(
                  children:
                  [
                    CircularPercentIndicator(
                      radius: 15.0,
                      lineWidth: 4.0,
                      percent: 0.3,
                      progressColor: Colors.grey[700],
                    ),

                    const SizedBox(width: 15,),

                    Text('Product Design', style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
                  ],
                ),

                Row(
                  children:
                  [
                    Text('6', style: TextStyle(fontSize: 16.sp, color: Colors.black, fontWeight: FontWeight.bold)),
                    Text('/24', style: TextStyle(fontSize: 14.sp, color: Colors.grey, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
    
            
    
            
          ],
        ),
      ),
    );
  }
}