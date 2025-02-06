import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/Features/03_bottom_nav_bar/bottom_nav_bar_views/notifictations/widgets/mess_status_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMessageCard extends StatelessWidget
{
  const CustomMessageCard({super.key, required this.withImageMessage, this.imageItself});

  final bool withImageMessage;
  final Image? imageItself;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      decoration: BoxDecoration(color: AppColors.kWhiteColor, borderRadius: BorderRadius.circular(10.r),
        boxShadow:
        [
          BoxShadow(
            color: AppColors.kGreyColor.withAlpha((0.2 * 255).round()),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            const UserStatusAndMessageTime(),

            const SizedBox(height: 5,),

            const Text('Congratulations on completing the first lesson, keep up the good work!',),

            const SizedBox(height: 10,),

            withImageMessage ?
            ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: Container(
                height: 145.h,
                width: double.infinity,
                color: AppColors.kCardColorPinkCardContainer,
              ),
            )
            : const SizedBox.shrink()
          ],
        )
      ),
    );
  }
}



