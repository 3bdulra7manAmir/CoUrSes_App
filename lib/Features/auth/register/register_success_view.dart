import 'package:courses_app/Core/constants.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Core/widgets/custom_button.dart';
import 'package:courses_app/Core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuccessPopUpView extends StatelessWidget
{
  const SuccessPopUpView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Material(
      color: Color(0xff797988),
      child: Center(
        child: Container(
          height: 300.h, //0.38
          width: KMediaQuery(context).width * 0.8,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.r),),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:
            [
              const SizedBox(height: 30,),
        
              SvgPicture.asset('assets/images/svg/Success.svg', width: 65.w,),
        
              const SizedBox(height: 20,),
        
              Text('Success', style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),),
        
              const SizedBox(height: 20,),
        
              CustomTextWidget(widgetText: 'Congratulations. you have\ncompleted your registration!',
              widgetAlignment: Alignment.center,
              widgetPadding: EdgeInsets.only(left: KMediaQuery(context).width * 0),
              ),
        
              Spacer(),
        
              CustomBlueButton(buttonWidth: 0.7, buttonText: 'Done', buttonOnPressed: (){}),

              SizedBox(height: 25,),
        
              
            ],
          ),
        ),
      ),
    );
  }
}
