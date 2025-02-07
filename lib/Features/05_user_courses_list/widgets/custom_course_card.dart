
import 'package:courses_app/Core/utils/constants/app_colors.dart';
import 'package:courses_app/Core/utils/constants/app_responsive.dart';
import 'package:courses_app/Core/utils/functions/random_color.dart';
import 'package:courses_app/Core/shared/custom_linear_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCourseCard extends StatelessWidget
{
  CustomCourseCard({super.key,});

  final result = randomFunction();

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      width: KMediaQuery(context).width * 0.45,
      height: 150.h,
              
      child: Card(
        color: result.keys.first,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Text('Product\nDesign v1.0', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp,
              //foreground: Paint()..style = PaintingStyle.stroke..strokeWidth = 1.2..color = Colors.black,
              overflow: TextOverflow.ellipsis
              ),),
                        
              const SizedBox(height: 15,),
                        
              CustomLinearIndicator(backgroundColor: AppColors.kWhiteColor, progressColor: result.values.first, percent: 67 / 100, width: 0.33,),
          
              const SizedBox(height: 10,),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      const Text('Completed'),
              
                      Text('14/24', style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold,
                      //foreground: Paint()..style = PaintingStyle.stroke..strokeWidth = 1..color = Colors.black,
                      ),),
                    ],
                  ),
              
                  CircleAvatar(
                    backgroundColor: result.values.first,
                    child: IconButton(onPressed: () {print('Play Button Has been Pressed');},
                      icon: const Icon(Icons.play_arrow_rounded),
                      color: AppColors.kWhiteColor,
                    ),
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