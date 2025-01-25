import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/views/user_courses/widgets/custom_gridview_builder.dart';
import 'package:courses_app/views/user_courses/widgets/custom_page_header.dart';
import 'package:courses_app/views/user_courses/widgets/custom_progress_container.dart';
import 'package:flutter/material.dart';

class UserCoursesView extends StatelessWidget
{
  const UserCoursesView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: KMediaQuery(context).width * 0.05, right: KMediaQuery(context).width * 0.03),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              CustomCoursesHeader(),
          
              SizedBox(height: 30,),
          
              CustomCoursesProgressCard(),
          
              SizedBox(height: 20,),
          
              Expanded(child: CustomCardsGridViewBuilder()),
            ],
          ),
        ),
      ),
    );
  }
}


