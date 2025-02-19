
import 'package:courses_app/Core/utils/constants/app_colors.dart';
import 'package:courses_app/Core/utils/constants/app_images.dart';
import 'package:courses_app/Core/utils/constants/app_responsive.dart';
import 'package:courses_app/app/app_router.dart';
import 'package:courses_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomAllTabCard extends StatelessWidget
{
  const CustomAllTabCard({super.key});

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: (){GoRouter.of(context).push(AppRouter.kCoursePreviewView);},
      child: Container(
        height: 95.h,
      
        decoration: BoxDecoration(
          color: AppColors.kWhiteColor,
          borderRadius: BorderRadius.circular(10.r),
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
              
              ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: SizedBox(
                  height: 100.h,
                  width: KMediaQuery(context).width * 0.2,
                  //Container will be Replaced with a SvgPicture.assets or Image.assets
                  child: Container(color: AppColors.kCustomAllTabCardColor1,),
                ),
              ),
      
              const SizedBox(width: 30,),
      
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text('Product Design v1.0', style: Styles.textStyle14.copyWith(color: AppColors().kBlackColor, fontWeight: FontWeight.bold),),
      
                  const SizedBox(height: 5,),
      
                  Row(
                    children:
                    [
                      Image.asset(AppIMGs().kPersonPNG),
                      const SizedBox(width: 5,),
                      Text('Robertson Connie', style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),)
                    ],
                  ),
      
                  const SizedBox(height: 5,),
                  
                  Row(
                    children:
                    [
                      Text('\$190', style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, color: AppColors.kCardColorBlueLinearLine),),
      
                      const SizedBox(width: 5),
      
                      Container(
                        width: KMediaQuery(context).width * 0.15,
                        decoration: BoxDecoration(
                          color: AppColors.kCustomAllTabCardColor2,
                          borderRadius: BorderRadius.circular(10.r)
                        ),
                        child: Center(child: Text('16 hours', style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold, color: AppColors.kCustomAllTabCardColor3),))),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    
  }
}