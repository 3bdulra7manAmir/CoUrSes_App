

import 'package:courses_app/Core/utils/constants/app_colors.dart';
import 'package:courses_app/Core/utils/constants/app_responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WholeTabBar extends StatefulWidget
{
  const WholeTabBar({super.key,
  required this.tabBarControllerLength,
  required this.tabBarWidgets,
  required this.tabBarViewWidgets,
  this.tabBarWidgetsBoxDecorationColor,
  this.tabBarViewContainerWidth,
  this.unselectedLabelColor,
  this.labelColor,
  this.indicatorColor,
  this.tabBarContainerWidth,
  this.tabBarContainerHeight, 
  this.dividerColor,});

  final int tabBarControllerLength;
  final List<Widget> tabBarWidgets;
  final List<Widget> tabBarViewWidgets;
  final Color? tabBarWidgetsBoxDecorationColor;
  final double? tabBarViewContainerWidth;
  final Color? unselectedLabelColor;
  final Color? labelColor;
  final Color? indicatorColor;
  final Color? dividerColor;

  final double? tabBarContainerWidth;
  final double? tabBarContainerHeight;

  @override
  State<WholeTabBar> createState() => WholeTabBarState();
}

class WholeTabBarState extends State<WholeTabBar> with SingleTickerProviderStateMixin
{
  late TabController tabBarController;

  @override
  void initState()
  {
    super.initState();
    tabBarController = TabController(length: widget.tabBarControllerLength, vsync: this);
  }

  @override
  void dispose()
  {
    tabBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Container(
          width: widget.tabBarContainerWidth ?? KMediaQuery(context).width * 0.75,
          height: widget.tabBarContainerHeight ?? 40.h,
          
          decoration: BoxDecoration(
            color: widget.tabBarWidgetsBoxDecorationColor ?? AppColors().kButtonsBlueColor,
            borderRadius: BorderRadius.circular(10.r),
          ),

          child: TabBar(
            dividerColor: widget.dividerColor,
            controller: tabBarController,
            indicatorColor: widget.indicatorColor ?? AppColors.kWhiteColor,                                // Color of the selected tab indicator
            labelColor: widget.labelColor ?? AppColors.kWhiteColor,                                       // Color of the selected tab text
            unselectedLabelColor: widget.unselectedLabelColor ?? AppColors.kWhiteColor.withAlpha((0.6 * 255).round()), // Color of unselected tab text
            tabs: widget.tabBarWidgets,
          ),
        ),

        const SizedBox(height: 10,),

        Expanded(
          child: SizedBox(
            width: widget.tabBarViewContainerWidth ?? KMediaQuery(context).width * 0.85,
            child: TabBarView(
              controller: tabBarController,
              children: widget.tabBarViewWidgets,
            ),
          ),
        ),
      ],
    );
  }
}