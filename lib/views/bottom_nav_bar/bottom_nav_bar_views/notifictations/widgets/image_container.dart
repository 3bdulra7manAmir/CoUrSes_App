import 'package:courses_app/Core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserImageContainer extends StatelessWidget
{
  const UserImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.r),
      child: SizedBox(
        height: 55.h,
        width: KMediaQuery(context).width * 0.15,
        //Container will be Replaced with a SvgPicture.assets or Image.assets
        child: Container(color: AppColors.kUserImageContainerColor,),
      ),
    );
  }
}