import 'package:courses_app/Core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseEpisodeCard extends StatelessWidget
{
  const CourseEpisodeCard({super.key, required this.isLockedAndisBlueCorrectIcon, required this.isEpisodeOpenedYetOrLocked, });

  final bool isLockedAndisBlueCorrectIcon;
  final bool isEpisodeOpenedYetOrLocked;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        SizedBox(width: KMediaQuery(context).width * 0.1, height: 60.h,
        //color: Colors.red,
        child: Center(child: Text('01', style: TextStyle(color: Colors.grey, fontSize: 20.sp, fontWeight: FontWeight.bold),)),
        ),

        const SizedBox(width: 20,),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Text('Welcome to the Course', style: TextStyle(color: Colors.black, fontSize: 14.sp, fontWeight: FontWeight.bold),),
            SizedBox(height: 10),
            Row(
              children:
              [
                Text('6:10 mins', style: TextStyle(
                  color: isEpisodeOpenedYetOrLocked ? Colors.grey : kButtonsBlueColor, fontSize: 14.sp, fontWeight: FontWeight.bold),),
                const SizedBox(width: 4,),
                isEpisodeOpenedYetOrLocked ? SizedBox.shrink() : SvgPicture.asset('assets/images/svg/Correct_Icon.svg'),
              ],
            ),
          ],
        ),

        const Spacer(),
      
        CircleAvatar(
          backgroundColor: isLockedAndisBlueCorrectIcon ? kButtonsBlueColor.withValues(alpha: 0.5) : kButtonsBlueColor,
          child: IconButton(onPressed: () {print('Play Button Has been Pressed');},
          icon:  isLockedAndisBlueCorrectIcon ? Icon(Icons.lock) : Icon(Icons.play_arrow_rounded),
          color: Colors.white,
          ),
        ),
      ],
    );
  }
}