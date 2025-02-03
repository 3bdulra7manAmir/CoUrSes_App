import 'package:courses_app/Core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomProfileAvatarImage extends StatelessWidget
{
  const CustomProfileAvatarImage({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.only(right: KMediaQuery(context).width * 0.05, top: KMediaQuery(context).height * 0.02),
      child: Align(
        alignment: Alignment.topRight,
        child: SvgPicture.asset(AppIMGs().kProfileAvatarWithoutCameraSVG, width: 40.w,),
      ),
    );
  }
}