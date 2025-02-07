
import 'package:courses_app/Core/utils/constants/app_colors.dart';
import 'package:courses_app/Core/utils/constants/app_images.dart';
import 'package:courses_app/Core/utils/constants/app_responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomCoursesLanguageCard extends StatelessWidget
{
  const CustomCoursesLanguageCard({super.key,});



  @override
  Widget build(BuildContext context)
  {
    return Container(width: KMediaQuery(context).width * 0.45, height: 69.h,
      decoration: BoxDecoration(color: AppColors.kCustomCoursesLanguageCardColor1, borderRadius: BorderRadius.circular(15.r),),
      child: Stack(
        clipBehavior: Clip.none, // Prevents clipping of the image
        children:
        [
          Positioned(top: -9.h,
            child: Align(
              alignment: Alignment.topLeft,
              child: SvgPicture.asset(AppIMGs().kListeningToMusicSVG,)
            ),
          ),

          Positioned(
            left: KMediaQuery(context).width * 0.2, top: 38.h,
            child: Container(
              width: KMediaQuery(context).width * 0.25,
              decoration: BoxDecoration(
                color: AppColors.kWhiteColor.withAlpha((0.8 * 255).round()),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r), bottomLeft: Radius.circular(10.r)),
              ),
              child: Center(
                child: Text('Language', style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, color: AppColors().kButtonsBlueColor,),))),
          ),
        ],
      ),
    );
  }
}


class CustomCoursesPaintingCard extends StatelessWidget
{
  const CustomCoursesPaintingCard({super.key,});



  @override
  Widget build(BuildContext context)
  {
    return Container(width: KMediaQuery(context).width * 0.45, height: 69.h,
      decoration: BoxDecoration(color: AppColors.kCustomCoursesLanguageCardColor2, borderRadius: BorderRadius.circular(15.r),),
      child: Stack(
        clipBehavior: Clip.none,
        children:
        [
          Positioned(top: -9.h,
            child: Align(
              alignment: Alignment.topLeft,
              child: SvgPicture.asset(AppIMGs().kDrawingSVG,)
            ),
          ),

          Positioned(
            left: KMediaQuery(context).width * 0.23, top: 38.h,
            child: Container(
              width: KMediaQuery(context).width * 0.22,
              decoration: BoxDecoration(
                color: AppColors.kCustomCoursesLanguageCardColor3,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r), bottomLeft: Radius.circular(10.r)),
              ),
              child: Center(
                child: Text('Painting', style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, color: AppColors.kCustomCoursesLanguageCardColor4,),))),
          ),
        ],
      ),
    );
  }
}


class CustomCoursesCardRow extends StatelessWidget
{
  const CustomCoursesCardRow({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      child: Row(
        children:
        [
          CustomCoursesLanguageCard(),
          SizedBox(width: 10,),
          CustomCoursesPaintingCard(),
        ],
      ),
    );
  }
}