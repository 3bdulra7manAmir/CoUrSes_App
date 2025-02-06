import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Features/03_bottom_nav_bar/bottom_nav_bar_views/courses/widgets/custom_courses_card.dart';
import 'package:courses_app/Features/03_bottom_nav_bar/bottom_nav_bar_views/courses/widgets/custom_header.dart';
import 'package:courses_app/Features/03_bottom_nav_bar/bottom_nav_bar_views/courses/widgets/custom_search_field.dart';
import 'package:courses_app/Features/03_bottom_nav_bar/bottom_nav_bar_views/courses/widgets/tabBar_widgets/custom_all_tab.dart';
import 'package:courses_app/Core/shared/custom_listviewbuilder.dart';
import 'package:courses_app/Core/shared/custom_tabbar_itself.dart';
import 'package:flutter/material.dart';

class CoursesView extends StatelessWidget
{
  const CoursesView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: KMediaQuery(context).height * 0.04, left: KMediaQuery(context).width * 0.05, right: KMediaQuery(context).width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              const CoursesHeader(),
          
              const SizedBox(height: 5,),
          
              const CustomSearchField(),
          
              const SizedBox(height: 40,),
          
              const CustomCoursesCardRow(),
          
              const SizedBox(height: 30,),
          
              Text('Choose your course', style: Styles.textStyle18,),
          
              const SizedBox(height: 20,),
          
              const Expanded(
                child: WholeTabBar(
                  tabBarWidgets:
                  [
                    Text('All'),
                    Text('Popular'),
                    Text('New'),
                  ],

                  tabBarControllerLength: 3,
                  tabBarViewWidgets:
                  [
                    SeparatorListViewBuilder(
                      returnedWidget: CustomAllTabCard(),
                      returneditemCount: 6,
                      separatorBuilderWidget: SizedBox(height: 15,),
                    ),
                    SeparatorListViewBuilder(
                      returnedWidget: CustomAllTabCard(),
                      returneditemCount: 6,
                      separatorBuilderWidget: SizedBox(height: 15,),
                    ),
                    SeparatorListViewBuilder(
                      returnedWidget: CustomAllTabCard(),
                      returneditemCount: 6,
                      separatorBuilderWidget: SizedBox(height: 15,),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

