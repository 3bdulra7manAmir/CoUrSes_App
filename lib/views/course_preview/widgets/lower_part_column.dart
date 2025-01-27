import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/views/course_preview/widgets/bottom_listviewbuilder.dart';
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
            Text('\$74.00', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp, color: kButtonsBlueColor),),
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
            child: SvgPicture.asset('assets/images/svg/down_arrow.svg', width: 30.w,),
          ),
        ),

        const SizedBox(height: 15,),

        SizedBox(
          height: 400.h, // Example height
          child: BottomCoursesListViewBuilder()),
      ],
    ),
    );
  }
}

