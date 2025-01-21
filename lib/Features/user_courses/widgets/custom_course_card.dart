import 'package:courses_app/Core/constants.dart';
import 'package:courses_app/Core/widgets/custom_linear_Indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCourseCard extends StatelessWidget
{
  const CustomCourseCard({super.key,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: KMediaQuery(context).width * 0.45,
      height: 150.h,
              
      child: Card(
        color: Color(0xffFFE7EE),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Text('Product\nDesign v1.0', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp,
              foreground: Paint()..style = PaintingStyle.stroke..strokeWidth = 1.2..color = Colors.black,
              overflow: TextOverflow.ellipsis
              ),),
                        
              const SizedBox(height: 15,),
                        
              CustomLinearIndicator(backgroundColor: Colors.white, progressColor: Colors.pink[200]!, percent: 67 / 100, width: 0.33,),
          
              const SizedBox(height: 10,),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      Text('Completed'),
              
                      Text('14/24', style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold,
                      foreground: Paint()..style = PaintingStyle.stroke..strokeWidth = 1..color = Colors.black,),
                      ),
                    ],
                  ),
              
                  CircleAvatar(
                    backgroundColor: Colors.pink[200],
                    child: IconButton(onPressed: () {},
                      icon: const Icon(Icons.play_arrow_rounded),
                      color: Colors.white,
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