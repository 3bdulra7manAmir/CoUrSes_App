
import 'package:courses_app/Core/utils/constants/app_colors.dart';
import 'package:courses_app/views/03_bottom_nav_bar/bottom_nav_bar_views/notifictations/widgets/image_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserStatusAndMessageTime extends StatelessWidget
{
  const UserStatusAndMessageTime({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        const UserImageContainer(),
    
        const SizedBox(width: 10,),
    
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            const SizedBox(height: 10,),
    
            Text('Bert Pullman', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),),
    
            const SizedBox(height: 5,),
    
            Text('Online', style: TextStyle(fontSize: 12.sp, color: AppColors.kGreyColor, fontWeight: FontWeight.bold),),
          ],
        ),
    
        const Spacer(),
    
        Padding(
          padding:  EdgeInsets.only(top: 11.h),
          child: const Text('04:32 pm'),
        ),
      ],
    );
  }
}