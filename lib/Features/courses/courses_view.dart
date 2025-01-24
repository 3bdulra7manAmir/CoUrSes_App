// ignore_for_file: deprecated_member_use

import 'package:courses_app/Core/constants.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Features/courses/widgets/custom_courses_card.dart';
import 'package:courses_app/Features/courses/widgets/custom_header.dart';
import 'package:courses_app/Features/courses/widgets/custom_search_field.dart';
import 'package:courses_app/Features/courses/widgets/tabBar_widgets/tabbar_itself.dart';
import 'package:flutter/material.dart';

class CoursesView extends StatefulWidget
{
  const CoursesView({super.key});

  @override
  State<CoursesView> createState() => CoursesViewState();
}

class CoursesViewState extends State<CoursesView> with SingleTickerProviderStateMixin
{

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
          
              Expanded(child: TabBarItself()),
            ],
          ),
        ),
      ),
    );
  }
}

