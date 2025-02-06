import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/home/widgets/custom_middle_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMiddleCardListViewBuilder extends StatelessWidget
{
  const CustomMiddleCardListViewBuilder({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder(
      //shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index)
      {
        return Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: const CustomMiddleCard(),
        );
      },
      );
  }
}