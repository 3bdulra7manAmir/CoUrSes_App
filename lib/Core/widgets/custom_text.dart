import 'package:courses_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget
{
  const CustomTextWidget({super.key, required this.widgetText, this.widgetAlignment, this.widgetPadding, this.widgetTextStyle,});

  final String widgetText;
  final AlignmentGeometry? widgetAlignment;
  final EdgeInsetsGeometry? widgetPadding;
  final TextStyle? widgetTextStyle;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: widgetPadding ?? EdgeInsets.only(left: 20),
      child: Align(
        alignment: widgetAlignment ?? Alignment.centerLeft,
        child: Text(widgetText, style: widgetTextStyle ?? Styles.textStyle14,)
      ),
    );
  }
}