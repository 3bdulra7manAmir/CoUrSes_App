
import 'package:courses_app/Core/utils/constants/app_images.dart';
import 'package:courses_app/views/01_intro_views/widget/custom_stamp.dart';
import 'package:flutter/material.dart';

class TrialCoursesView extends StatelessWidget
{
  const TrialCoursesView({super.key, this.pageController});

  final PageController? pageController;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children:
      [
        TheConnected3Stamp(
          skipText: 'Skip',
          imagePath: AppIMGs().kTrialCourseSVG,
          afterImageText1: 'Numerous free\ntrial courses',
          afterImageText2: 'Free courses for you to\nfind your way to learning',
        ),

        const SizedBox(height: 50,),
      ],
    );
    
  }
}

