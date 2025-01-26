import 'package:courses_app/views/intro_views/easy_learn_view.dart';
import 'package:courses_app/views/intro_views/study_plan_view.dart';
import 'package:courses_app/views/intro_views/trial_courses_view.dart';
import 'package:flutter/material.dart';

class The3Screens extends StatelessWidget
{
  const The3Screens({super.key});

  @override
  Widget build(BuildContext context)
  {
    final PageController pageController = PageController();

    return SafeArea(
      child: Scaffold(
        body: Column(
          children:
          [
            Expanded(
              child: PageView(
                controller: pageController,
                children:
                [
                  TrialCoursesView(pageController: pageController,),
                  QuickAndEasyLearnView(pageController: pageController,),
                  StudyPlanView(pageController: pageController,),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
