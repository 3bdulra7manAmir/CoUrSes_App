import 'package:courses_app/views/course_preview/widgets/pay_now_bms.dart';
import 'package:flutter/material.dart';

class BMSPayMentView extends StatelessWidget
{
  const BMSPayMentView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: BMSPayMentItself(),
      ),
    );
  }
}