import 'package:courses_app/Core/utils/constants/app_colors.dart';
import 'package:courses_app/Core/utils/constants/app_images.dart';
import 'package:courses_app/Core/utils/constants/app_responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseEpisodeCard extends StatelessWidget
{
  const CourseEpisodeCard({super.key, required this.isLockedAndisBlueCorrectIcon, required this.isEpisodeOpenedAndLocked, });

  final bool isLockedAndisBlueCorrectIcon;
  final bool isEpisodeOpenedAndLocked;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        SizedBox(width: KMediaQuery(context).width * 0.1, height: 60.h,
        //color: Colors.red,
        child: Center(child: Text('01', style: TextStyle(color: AppColors.kGreyColor, fontSize: 20.sp, fontWeight: FontWeight.bold),)),
        ),

        const SizedBox(width: 20,),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Text('Welcome to the Course', style: TextStyle(color: AppColors().kBlackColor, fontSize: 14.sp, fontWeight: FontWeight.bold),),
            const SizedBox(height: 10),
            Row(
              children:
              [
                Text('6:10 mins', style: TextStyle(
                  color: isEpisodeOpenedAndLocked ? AppColors.kGreyColor : AppColors().kButtonsBlueColor, fontSize: 14.sp, fontWeight: FontWeight.bold),),
                const SizedBox(width: 4,),
                isEpisodeOpenedAndLocked ? const SizedBox.shrink() : SvgPicture.asset(AppIMGs().kCorrectIconSVG),
              ],
            ),
          ],
        ),

        const Spacer(),
      
        CircleAvatar(
          backgroundColor: isLockedAndisBlueCorrectIcon ? AppColors().kButtonsBlueColor.withValues(alpha: 0.5) : AppColors().kButtonsBlueColor,
          child: IconButton(onPressed: () {print('Play Button Has been Pressed');},
          icon:  isLockedAndisBlueCorrectIcon ? const Icon(Icons.lock) : const Icon(Icons.play_arrow_rounded),
          color: AppColors.kWhiteColor,
          ),
        ),
      ],
    );
  }
}