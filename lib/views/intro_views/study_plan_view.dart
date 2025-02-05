import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/views/intro_views/widget/custom_stamp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            imagePath: AppIMGs().kStudyPlanSVG,
            afterImageText1: 'Create your own\nstudy plan',
            afterImageText2: 'Study according to the\nstudy plan, make study\nmore motivated',
            ),
      
          const SizedBox(height: 30,),
        
          SizedBox(height: 45.h,),
        
          const SizedBox(height: 30,),
        ],
      ),
    );
  }
}