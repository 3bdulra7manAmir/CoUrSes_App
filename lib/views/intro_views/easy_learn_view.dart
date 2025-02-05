import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/views/intro_views/widget/custom_stamp.dart';
import 'package:flutter/material.dart';

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
          imagePath: AppIMGs().kEasyLearningSVG,
          afterImageText1: 'Quick and easy\nlearning',
          afterImageText2: 'Easy and fast learning at\nany time to help you\nimprove your various skills',
        ),

        const SizedBox(height: 50,),

      ],
    );
  }
}