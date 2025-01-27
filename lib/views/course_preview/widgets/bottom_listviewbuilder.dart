import 'package:courses_app/views/course_preview/widgets/course_episode_card.dart';
import 'package:flutter/material.dart';

class BottomCoursesListViewBuilder extends StatelessWidget
{
  const BottomCoursesListViewBuilder({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return ListView.separated(
      itemBuilder: (context, index)
      {
        return CourseEpisodeCard(
          isEpisodeOpenedYetOrLocked: true,
          isLockedAndisBlueCorrectIcon: true,
        );
      },
      separatorBuilder: (context, index)
      {
        return SizedBox(height: 10,);
      },
      itemCount: 8
    );
  }
}