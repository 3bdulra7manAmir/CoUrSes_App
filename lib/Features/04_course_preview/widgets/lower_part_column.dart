import 'package:courses_app/Core/shared/custom_listviewbuilder.dart';
import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/Features/04_course_preview/widgets/course_episode_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LowerPartColumn extends StatelessWidget
{
  const LowerPartColumn({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
    padding: const EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
          [
            Text('Prodcut Design v1.0', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),),
            Text('\$74.00', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp, color: AppColors().kButtonsBlueColor),),
          ],
        ),
    
        const SizedBox(height: 5,),
    
        Text('6h 14min . 24 Lessons', style: TextStyle(fontSize: 13.sp)),
    
        const SizedBox(height: 15,),
    
        Text('About this course', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),),
    
        const SizedBox(height: 5,),
    
        Text('Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium,', style: TextStyle(fontSize: 13.sp)),
    
        const SizedBox(height: 15,),
    
        Align(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: (){print('Down Arrow Button Has been Pressed');},
            child: SvgPicture.asset(AppIMGs().kDownArrowSVG, width: 25.w,),
          ),
        ),

        const SizedBox(height: 25,),

        SizedBox(
          height: 200.h,
          child: const SeparatorListViewBuilder(
            returnedWidget: CourseEpisodeCard(
              isEpisodeOpenedAndLocked: false,
              isLockedAndisBlueCorrectIcon: false,
            ),
            returneditemCount: 4,
            separatorBuilderWidget: SizedBox(height: 10,),
          ),
        ),
      ],
    ),
    );
  }
}

