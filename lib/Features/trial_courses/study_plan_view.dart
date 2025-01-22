import 'package:courses_app/Core/widgets/custom_button.dart';
import 'package:courses_app/Features/trial_courses/widget/custom_stamp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StudyPlanView extends StatelessWidget
{
  const StudyPlanView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
          [
            TheConnected3Stamp(
              imagePath: 'assets/images/svg/Study_Plan.svg',
              afterImageText1: 'Create your own\nstudy plan',
              afterImageText2: 'Study according to the\nstudy plan, make study\nmore motivated',
              ),

            SizedBox(height: 45.h,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                CustomBlueButton(buttonWidth: 0.45, buttonText: 'Sign up', buttonOnPressed: (){print('SignUp Button Pressed');}),

                const SizedBox(width: 10,),

                CustomReversedButton(buttonWidth: 0.45, buttonText: 'Log in', buttonOnPressed: (){print('Login Button Pressed');}),
              ],
            )
          ],
        ),
      ),
    );
  }
}