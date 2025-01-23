import 'package:courses_app/Core/constants.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Features/home/widgets/custom_learn_plan_card.dart';
import 'package:courses_app/Features/home/widgets/custom_listview_builder.dart';
import 'package:courses_app/Features/home/widgets/custom_meetup_card.dart';
import 'package:courses_app/Features/home/widgets/custom_profile_avatar.dart';
import 'package:courses_app/Features/home/widgets/custom_progress_card.dart';
import 'package:courses_app/Features/home/widgets/custom_user_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget
{
  const HomeView({super.key});

  // Calculate the total height required for all Positioned widgets
  //final double totalHeight = 550.h + 200.h; // Adjust based on your widgets' heights

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,),
              child: Stack(
                children:
                [
                  const CustomUserPart(),

                  const CustomProfileAvatarImage(),

                  Positioned(top: 120.h, left: KMediaQuery(context).width * 0.05,
                  child: CustomHomeProgressCard()
                  ),

                  Positioned(top: 240.h, left: KMediaQuery(context).width * 0.05,

                  child: SizedBox(
                    width: KMediaQuery(context).width * 0.9,
                    height: 140.h,
                    child: CustomMiddleCardListViewBuilder()
                    ),
                  ),

                  Positioned(top: 400.h, left: KMediaQuery(context).width * 0.05,
                  child: Text('Learning Plan', style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),),
                  ),

                  Positioned(top: 435.h, left: KMediaQuery(context).width * 0.05,
                  child: CustomHomeLearnPlanCard()
                  ),

                  Positioned(top: 550.h, left: KMediaQuery(context).width * 0.05,
                  child: CustomMeetupCard(),
                  ),

                  // // Add extra space at the bottom to ensure scrolling works
                  // Positioned(
                  //   top: totalHeight + 20.h, // Adjust based on your content
                  //   left: 0,
                  //   right: 0,
                  //   child: const SizedBox(height: 20),
                  // ),
                ],
            ),
          ),
        ),
      ),
    );
  }
}
