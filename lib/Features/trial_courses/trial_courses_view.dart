import 'package:courses_app/Features/trial_courses/widget/custom_stamp.dart';
import 'package:flutter/material.dart';

class TrialCoursesView extends StatelessWidget
{
  const TrialCoursesView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: TheConnected3Stamp(
          skipText: 'Skip',
          imagePath: 'assets/images/svg/Trial_Course.svg',
          afterImageText1: 'Numerous free\ntrial courses',
          afterImageText2: 'Free courses for you to\nfind your way to learning',
        ),
      ),
    );
  }
}

