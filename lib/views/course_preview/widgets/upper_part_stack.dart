import 'package:courses_app/Core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class UpperPartStack extends StatelessWidget
{
  const UpperPartStack({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      clipBehavior: Clip.none,
      children:
      [
        Container(
          color: AppColors.kCardColorPinkCardContainer,
          height: 220.h,
          width: double.infinity,
        ),
    
        Positioned(
          left: KMediaQuery(context).width * 0.05, top: 25.h,
          child: SvgPicture.asset(AppIMGs().kBBIMGSVG),
        ),
            
        Positioned(
          left: KMediaQuery(context).width * 0.05, top: 70.h,
          child: SvgPicture.asset(AppIMGs().kBestSellerSVG),
        ),
            
        Positioned(
          left: KMediaQuery(context).width * 0.01, top: 50.h,
          child: SvgPicture.asset(AppIMGs().kFlyingPaperSVG),
        ),
            
        Positioned(
          left: KMediaQuery(context).width * 0.05, top: 105.h,
          child: Text('ProductDesign v1.0', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),),
        ),
            
        Positioned(
          right: KMediaQuery(context).width * 0.05, top: 15.h,
          child: SvgPicture.asset(AppIMGs().kSpeakerHolderSVG),
        ),
    
        Positioned(top: 210.h, left: 0, right: 0, // This ensures the width is constrained to the parent's width
          child: Container(height: 180.h, width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r),),
            ),
          ),
        ),
      ],
    );
  }
}