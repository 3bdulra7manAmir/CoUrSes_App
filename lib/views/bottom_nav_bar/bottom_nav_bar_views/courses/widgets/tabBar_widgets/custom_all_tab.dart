// ignore_for_file: deprecated_member_use

import 'package:courses_app/Core/utils/constants.dart';
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
              
              ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: SizedBox(
                  height: 100.h,
                  width: KMediaQuery(context).width * 0.2,
                  //Container will be Replaced with a SvgPicture.assets or Image.assets
                  child: Container(color: Color(0xffC4C4C4),),
                ),
              ),
      
              const SizedBox(width: 30,),
      
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text('Product Design v1.0', style: Styles.textStyle14.copyWith(color: Colors.black, fontWeight: FontWeight.bold),),
      
                  const SizedBox(height: 5,),
      
                  Row(
                    children:
                    [
                      Image.asset('assets/images/png/person.png'),
                      const SizedBox(width: 5,),
                      Text('Robertson Connie', style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),)
                    ],
                  ),
      
                  const SizedBox(height: 5,),
                  
                  Row(
                    children:
                    [
                      Text('\$190', style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, color: Color(0xff3D5CFF)),),
      
                      const SizedBox(width: 5),
      
                      Container(
                        width: KMediaQuery(context).width * 0.15,
                        decoration: BoxDecoration(
                          color: Color(0xffFFEBF0),
                          borderRadius: BorderRadius.circular(10.r)
                        ),
                        child: Center(child: Text('16 hours', style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold, color: Color(0xffFF6905)),))),
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