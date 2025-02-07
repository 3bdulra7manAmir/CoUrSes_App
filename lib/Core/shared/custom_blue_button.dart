import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBlueButton extends StatelessWidget
{
  const CustomBlueButton({super.key, required this.buttonWidth, this.buttonHeight, required this.buttonText, required this.buttonOnPressed,});

  final double buttonWidth;
  final String buttonText;
  final void Function() buttonOnPressed;
  final double? buttonHeight;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      width: KMediaQuery(context).width * buttonWidth,
      height: KMediaQuery(context).height * (buttonHeight ?? 0.06),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.kCardColorBlueLinearLine),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r),),
        ),
      ),
      onPressed: buttonOnPressed,
      child: Center(child: Text(buttonText, style: Styles.textStyle16.copyWith(color: AppColors.kWhiteColor, fontWeight: FontWeight.bold),)),
      ),
    );
  }
}

