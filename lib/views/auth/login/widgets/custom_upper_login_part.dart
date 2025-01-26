import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Core/shared/custom_container.dart';
import 'package:flutter/material.dart';

class CustomWordLoginPart extends StatelessWidget
{
  const CustomWordLoginPart({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return CustomContainerBackGround(
      containerChild: Padding(
        padding: EdgeInsets.only(top: (KMediaQuery(context).height) * 0.07, left: KMediaQuery(context).width * 0.05),
        child: Align(alignment: Alignment.topLeft,
          child: Text("Log In", style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold))),
        ),
      );
  }
}