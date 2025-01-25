import 'package:courses_app/views/trial_courses/widget/custom_stamp.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class QuickAndEasyLearnView extends StatelessWidget
{
  const QuickAndEasyLearnView({super.key, this.pageController});

  final PageController? pageController;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children:
      [
        TheConnected3Stamp(
          skipText: 'Skip',
          imagePath: 'assets/images/svg/Easy_Learning.svg',
          afterImageText1: 'Quick and easy\nlearning',
          afterImageText2: 'Easy and fast learning at\nany time to help you\nimprove your various skills',
        ),

        const SizedBox(height: 50,),

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
      ],
    );
  }
}