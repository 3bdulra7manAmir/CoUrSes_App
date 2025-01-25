// ignore_for_file: deprecated_member_use

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
      decoration: BoxDecoration(color: Color(0xffEFE0FF), borderRadius: BorderRadius.circular(10.r),),
      child: Stack(
        children:
        [
          Padding(
            padding: EdgeInsets.only(top: 35.h, left: KMediaQuery(context).width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text('Meetup', style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold, color: Color(0xff440687)),),
                Text('off-line exchange of\nlearning experience', style: Styles.textStyle16.copyWith(color: Color(0xff440687)),)
              ],
            ),
          ),

          // Positioned(top: 40.h, left: KMediaQuery(context).width * 0.65,
          //   child: Container(
          //     width: 46.w,
          //     height: 40.h,
          //     decoration: BoxDecoration(
          //       //color: Colors.white,
          //       borderRadius: BorderRadius.circular(25.r),
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.white.withOpacity(0.5),
          //           spreadRadius: 2,
          //           blurRadius: 5,
          //           offset: Offset(0, 3), // changes position of shadow
          //         ),
          //       ],
          //     ),
          //   ),
          // ),

          Positioned(
            top: 40.h,
            left: KMediaQuery(context).width * 0.65,
            child: SvgPicture.asset('assets/images/svg/boy1.svg')
          ),

          Positioned(
            top: 65.h,
            left: KMediaQuery(context).width * 0.62,
            child: SvgPicture.asset('assets/images/svg/boy2.svg')
          ),

          Positioned(
            top: 64.h,
            left: KMediaQuery(context).width * 0.72,
            child: SvgPicture.asset('assets/images/svg/boy3.svg')
          ),
        ],
      ),
    
      
      
    );
  }
}