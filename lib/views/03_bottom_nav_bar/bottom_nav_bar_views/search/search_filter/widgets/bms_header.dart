
import 'package:courses_app/Core/utils/constants/app_responsive.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Core/shared/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BMSHeader extends StatelessWidget
{
  const BMSHeader({super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
      [
        IconButton(onPressed: ()
        {
          GoRouter.of(context).pop();
        }
        , icon: const Icon(Icons.close),
        ),
        CustomTextWidget(
          widgetText: 'Search Filter',
          widgetTextStyle: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
          widgetPadding: EdgeInsets.only(top: KMediaQuery(context).height * 0.03, left: 75.w,),
          widgetAlignment: Alignment.center,
        ),
      ],
    );
  }
}