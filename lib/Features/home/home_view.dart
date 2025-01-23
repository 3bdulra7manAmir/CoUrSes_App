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

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children:
            [
              SizedBox(height: 220.h,
                child: Stack(
                  children:
                  [
                    const CustomUserPart(),

                    const CustomProfileAvatarImage(),

                    Positioned(top: 120.h, left: KMediaQuery(context).width * 0.05,
                    child: CustomHomeProgressCard()),
                  ]
                ),
              ),

              const SizedBox(height: 20,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  SizedBox(width: KMediaQuery(context).width * 0.9, height: 140.h,
                  child: CustomMiddleCardListViewBuilder(),
                  ),

                  const SizedBox(height: 20,),

                  Text('Learning Plan', style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),),

                  const SizedBox(height: 10,),

                  const CustomHomeLearnPlanCard(),

                  const SizedBox(height: 30,),

                  const CustomMeetupCard(),

                  const SizedBox(height: 20,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
