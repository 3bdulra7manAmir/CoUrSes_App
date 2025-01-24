import 'package:courses_app/Core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomMiddleCard extends StatelessWidget
{
  const CustomMiddleCard({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(width: KMediaQuery(context).width * 0.9, height: 140.h,
      decoration: BoxDecoration(color: Color(0xffCEECFE), borderRadius: BorderRadius.circular(15.r),),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children:
          [
            Align(
              alignment: Alignment.centerRight,
              child: SvgPicture.asset('assets/images/svg/Degree.svg')),
    
            Text('What do you want to learn today?', style: TextStyle(color: Colors.black, fontSize: 16.sp, fontWeight: FontWeight.bold),),
    
            Padding(
              padding: EdgeInsets.only(bottom: KMediaQuery(context).height * 0.01),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: SizedBox(height: 45.h, width: KMediaQuery(context).width * 0.42,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Color((0xffFF6905))),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0.r),),),
                      ),
                    onPressed: (){},
                    child: Text('Get Started', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.sp),)
                    ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}