import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/Core/shared/custom_button.dart';
import 'package:courses_app/views/clocking_in/widgets/custom_clocking_week_days.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClockingInView extends StatelessWidget
{
  const ClockingInView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Material(
      color: Color(0xff797988),
      child: Center(
        child: Container(
          height: 430.h, //0.38
          width: KMediaQuery(context).width * 0.85,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.r),),
          child: Padding(
            padding: EdgeInsets.only(
              left: KMediaQuery(context).width * 0.03,
              right: KMediaQuery(context).width * 0.03,
              top: KMediaQuery(context).height * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text('Clocking in!', style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w900),),
                
                const SizedBox(height: 3,),

                Text('GOOD JOB!', style: TextStyle(fontSize: 15.sp, ),),

                const SizedBox(height: 15,),

                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:
                  [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Text('Learned today', style: TextStyle(fontSize: 14.sp),),

                        const SizedBox(height: 5,),

                        Row(
                          children:
                          [
                            Text('46', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18.sp),),

                            const SizedBox(width: 2,),

                            const Text('min',),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(width: 50.w,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Text('Total hours', style: TextStyle(fontSize: 14.sp),),

                        const SizedBox(height: 5,),

                        Row(
                          children:
                          [
                            Text('468', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18.sp),),

                            const SizedBox(width: 2,),

                            const Text('hrs'),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),

                const SizedBox(height: 20,),
                    
                Text('Total days', style: TextStyle(fontSize: 14.sp),),

                const SizedBox(height: 5,),

                Row(
                  children:
                  [
                    Text('554', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18.sp),),
                    SizedBox(width: 2,),
                    const Text('days',),
                  ],
                ),

                const SizedBox(height: 40,),
                
                const Align(alignment: Alignment.center,
                  child: Text('Record of this Week', style: TextStyle(fontWeight: FontWeight.bold),)
                  ),

                const SizedBox(height: 20,),

                BlueWeekDays(),

                SizedBox(height: 50.h,),

                CustomBlueButton(buttonWidth: 0.8, buttonText: 'Share', buttonOnPressed: (){})
              ],
            ),
          ),
        ),
      ),
    );
  }
}

