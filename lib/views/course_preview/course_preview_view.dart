import 'package:courses_app/Core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoursePreviewView extends StatelessWidget
{
  const CoursePreviewView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children:
          [
            Stack(
              children:
              [
                Positioned(
                  left: KMediaQuery(context).width * 0.05,
                  child: SvgPicture.asset('assets/images/svg/Eye.svg')
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}