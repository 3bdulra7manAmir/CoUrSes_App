import 'package:courses_app/Core/shared/custom_blue_button.dart';
import 'package:courses_app/Core/shared/custom_white_button.dart';
import 'package:courses_app/Core/utils/constants/app_colors.dart';

import 'package:courses_app/app/app_router.dart';
import 'package:courses_app/Features/01_intro_views/easy_learn_view.dart';
import 'package:courses_app/Features/01_intro_views/study_plan_view.dart';
import 'package:courses_app/Features/01_intro_views/trial_courses_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class The3IntroScreens extends StatefulWidget
{
  const The3IntroScreens({super.key});

  @override
  State<The3IntroScreens> createState() => _The3IntroScreensState();
}

class _The3IntroScreensState extends State<The3IntroScreens>
{
  final PageController pageController = PageController();
  int currentPage = 0;

  @override
  void initState()
  {
    super.initState();
    pageController.addListener(()
    {setState(() {currentPage = pageController.page?.round() ?? 0;});});
  }

  @override
  void dispose()
  {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
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
                  TrialCoursesView(pageController: pageController),
                  QuickAndEasyLearnView(pageController: pageController),
                  StudyPlanView(pageController: pageController),
                ],
              ),
            ),

            SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: const WormEffect(
                dotHeight: 8,
                dotWidth: 8,
                activeDotColor: AppColors.kBlueColor,
                dotColor: AppColors.kGreyColor,
              ),
            ),

            SizedBox(height: 45.h),

            currentPage == 2
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      CustomBlueButton(buttonWidth: 0.45, buttonText: 'Sign up', buttonOnPressed: () {print('SignUp Button Pressed'); GoRouter.of(context).push(AppRouter.kRegisterView);},),
                      const SizedBox(width: 10),
                      CustomReversedButton(buttonWidth: 0.45, buttonText: 'Log in', buttonOnPressed: () {print('Login Button Pressed'); GoRouter.of(context).push(AppRouter.kLoginView);},),
                    ],
                  )
                : const SizedBox.shrink(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}