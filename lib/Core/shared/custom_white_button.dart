
import 'package:courses_app/Core/utils/constants/app_colors.dart';
import 'package:courses_app/Core/utils/constants/app_responsive.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomReversedButton extends StatelessWidget
{
  const CustomReversedButton({super.key, required this.buttonWidth, this.buttonHeight, required this.buttonText, required this.buttonOnPressed, this.outerBorderColor,});

  final double buttonWidth;
  final String buttonText;
  final void Function() buttonOnPressed;
  final double? buttonHeight;
  final BorderSide? outerBorderColor;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      width: KMediaQuery(context).width * buttonWidth,
      height: KMediaQuery(context).height * (buttonHeight ?? 0.06),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.kWhiteColor),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
            side: outerBorderColor ?? BorderSide.none,
          ),
        ),
      ),
      onPressed: buttonOnPressed,
      child: Center(child: Text(buttonText, style: Styles.textStyle16.copyWith(color: AppColors.kCardColorBlueLinearLine, fontWeight: FontWeight.bold),)),
      ),
    );
  }
}