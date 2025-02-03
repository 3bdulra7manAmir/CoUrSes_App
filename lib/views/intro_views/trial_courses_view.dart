import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/views/intro_views/widget/custom_stamp.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
          imagePath: 'assets/images/svg/Trial_Course.svg',
          afterImageText1: 'Numerous free\ntrial courses',
          afterImageText2: 'Free courses for you to\nfind your way to learning',
        ),

        const SizedBox(height: 50,),

        SmoothPageIndicator(
          controller: pageController!,
          count: 3,
          effect: const WormEffect(
            dotHeight: 8,
            dotWidth: 8,
            activeDotColor: AppColors.kBlueColor,
            dotColor: AppColors.kGreyColor,
          ),
        ),
      ],
    );
    
  }
}

