// ignore_for_file: deprecated_member_use

import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/views/courses/widgets/tabBar_widgets/custom_all.dart';
import 'package:flutter/material.dart';

class TabBarItself extends StatefulWidget
{
  const TabBarItself({super.key});

  @override
  State<TabBarItself> createState() => TabBarItselfState();
}

class TabBarItselfState extends State<TabBarItself> with SingleTickerProviderStateMixin
{
  late TabController tabBarController;

  @override
  void initState()
  {
    super.initState();
    tabBarController = TabController(length: 1, vsync: this);
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
      children:
      [
        Container(
          color: kButtonsBlueColor, // Set the background color of the TabBar
          child: TabBar(
            controller: tabBarController,
            indicatorColor: Colors.white, // Color of the selected tab indicator
            labelColor: Colors.white, // Color of the selected tab text
            unselectedLabelColor: Colors.white.withOpacity(0.6), // Color of unselected tab text
            tabs: const
            [
              Tab(text: 'All'),
              //Tab(text: 'Popular'),
              //Tab(text: 'New'),
            ],
          ),
        ),

        SizedBox(height: 10,),

        Expanded(
          child: TabBarView(
            controller: tabBarController,
            children:
            [
              CustomAllTabListViewBuilder(),
              //CustomPopularTabListViewBuilder(),
              //CustomNewTabListViewBuilder(),
            ]
          ),
        ),
      ],
    );
  }
}