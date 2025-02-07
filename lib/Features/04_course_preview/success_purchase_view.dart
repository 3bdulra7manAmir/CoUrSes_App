import 'package:courses_app/Core/shared/custom_blue_button.dart';
import 'package:courses_app/Core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuccessPurchaseView extends StatelessWidget
{
  const SuccessPurchaseView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              SvgPicture.asset(AppIMGs().kSuccess2SVG),

              const SizedBox(height: 10,),

              Text('Successful purchase', style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),),

              const SizedBox(height: 30,),

              CustomBlueButton(buttonWidth: 0.8, buttonText: 'Start Learning', buttonOnPressed: (){print('Start Learning Button has been Pressed');}),
            ],
          )
        ),
      ),
    );
  }
}