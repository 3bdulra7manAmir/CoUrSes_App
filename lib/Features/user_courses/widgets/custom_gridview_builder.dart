import 'package:courses_app/Features/user_courses/widgets/custom_course_card.dart';
import 'package:flutter/material.dart';

class CustomCardsGridViewBuilder extends StatelessWidget
{
  const CustomCardsGridViewBuilder({super.key});

  @override
  Widget build(BuildContext context)
  {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
        crossAxisSpacing: 4.0, // Space between columns
        mainAxisSpacing: 8.0, // Space between rows
        childAspectRatio: 1.02, // Aspect ratio of each item //CARD SIZE
      ),
      itemCount: 7, // Number of items
      itemBuilder: (context, index)
      {
        return CustomCourseCard();
      }
    );
  }
}