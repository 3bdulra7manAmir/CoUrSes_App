import 'package:courses_app/Core/constants.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModalBottomSheetHeader extends StatelessWidget
{
  const ModalBottomSheetHeader({super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
      [
        IconButton(onPressed: ()
        {
          //GoRouter.of(context).pop();
        }
        , icon: Icon(Icons.close),
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