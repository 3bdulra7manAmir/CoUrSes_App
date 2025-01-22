import 'package:courses_app/Features/trial_courses/widget/custom_stamp.dart';
import 'package:flutter/material.dart';

class QuickAndEasyLearnView extends StatelessWidget
{
  const QuickAndEasyLearnView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: TheConnected3Stamp(
          skipText: 'Skip',
          imagePath: 'assets/images/svg/Easy_Learning.svg',
          afterImageText1: 'Quick and easy\nlearning',
          afterImageText2: 'Easy and fast learning at\nany time to help you\nimprove your various skills',
          ),
      ),
    );
  }
}