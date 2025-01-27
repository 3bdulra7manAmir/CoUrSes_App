import 'package:courses_app/views/course_preview/widgets/lower_part_column.dart';
import 'package:courses_app/views/course_preview/widgets/upper_part_stack.dart';
import 'package:flutter/material.dart';

class CoursePreviewView extends StatelessWidget
{
  const CoursePreviewView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              UpperPartStack(),
          
              LowerPartColumn(),
            ],
          ),
        ),
      )
    );
  }
}



