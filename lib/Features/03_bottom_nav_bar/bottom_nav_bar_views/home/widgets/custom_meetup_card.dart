import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomMeetupCard extends StatelessWidget
{
  const CustomMeetupCard({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: KMediaQuery(context).width * 0.9, height: 140.h,
      decoration: BoxDecoration(color: AppColors.kCustomCoursesLanguageCardColor2, borderRadius: BorderRadius.circular(10.r),),
      child: Stack(
        children:
        [
          Padding(
            padding: EdgeInsets.only(top: 35.h, left: KMediaQuery(context).width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text('Meetup', style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold, color: AppColors.kCustomMeetupCardColor),),
                Text('off-line exchange of\nlearning experience', style: Styles.textStyle16.copyWith(color: AppColors.kCustomMeetupCardColor),)
              ],
            ),
          ),

          Positioned(
            top: 40.h,
            left: KMediaQuery(context).width * 0.65,
            child: SvgPicture.asset(AppIMGs().kBoy1SVG)
          ),

          Positioned(
            top: 65.h,
            left: KMediaQuery(context).width * 0.62,
            child: SvgPicture.asset(AppIMGs().kBoy2SVG)
          ),

          Positioned(
            top: 64.h,
            left: KMediaQuery(context).width * 0.72,
            child: SvgPicture.asset(AppIMGs().kBoy3SVG)
          ),
        ],
      ),
    
      
      
    );
  }
}