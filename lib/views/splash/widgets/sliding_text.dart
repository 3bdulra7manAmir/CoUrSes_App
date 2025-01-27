import 'package:courses_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget
{
  const SlidingText({super.key, required this.textSildingAnim,});

  final Animation<Offset> textSildingAnim;

  @override
  Widget build(BuildContext context)
  {
    return AnimatedBuilder(
      animation: textSildingAnim,
      builder: (context, _)
      {
        return SlideTransition(
          position: textSildingAnim,
          child: Text("Watch Courses For Free!", style: Styles.textStyle18, textAlign: TextAlign.center,));
      }
    );
  }
}
