import 'package:courses_app/Core/shared/custom_button.dart';
import 'package:courses_app/views/intro_views/widget/custom_stamp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StudyPlanView extends StatelessWidget
{
  const StudyPlanView({super.key, this.pageController});

  final PageController? pageController;

  @override
  Widget build(BuildContext context)
  {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:
        [
          TheConnected3Stamp(
            imagePath: 'assets/images/svg/Study_Plan.svg',
            afterImageText1: 'Create your own\nstudy plan',
            afterImageText2: 'Study according to the\nstudy plan, make study\nmore motivated',
            ),
      
          const SizedBox(height: 30,),
      
          SmoothPageIndicator(
              controller: pageController!,
              count: 3,
              effect: const WormEffect(
                dotHeight: 8,
                dotWidth: 8,
                activeDotColor: Colors.blue,
                dotColor: Colors.grey,
              ),
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
          ),

          const SizedBox(height: 30,),
        ],
      ),
    );
  }
}