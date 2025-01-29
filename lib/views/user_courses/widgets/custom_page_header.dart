import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Core/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCoursesHeader extends StatelessWidget {
  const CustomCoursesHeader({super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
      [
        SvgPicture.asset(AppAssetsPaths().kBBIMGPath),
    
        CustomTextWidget(widgetText: 'My Courses', widgetTextStyle: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        widgetPadding: EdgeInsets.only(top: KMediaQuery(context).height * 0.05, left: KMediaQuery(context).width * 0.29),
        widgetAlignment: Alignment.center,
        ),
        
      ],
    );
  }
}