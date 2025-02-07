
import 'package:courses_app/Core/utils/constants/app_colors.dart';
import 'package:courses_app/Core/utils/constants/app_images.dart';
import 'package:courses_app/Core/utils/constants/app_responsive.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Core/shared/custom_blue_button.dart';
import 'package:courses_app/Core/shared/custom_text_widget.dart';
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
      color: AppColors.kSuccessPopUpViewColor,
      child: Center(
        child: Container(
          height: 300.h, //0.38
          width: KMediaQuery(context).width * 0.8,
          decoration: BoxDecoration(color: AppColors.kWhiteColor, borderRadius: BorderRadius.circular(10.r),),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:
            [
              const SizedBox(height: 30,),
        
              SvgPicture.asset(AppIMGs().kSuccessSVG, width: 65.w,),
        
              const SizedBox(height: 20,),
        
              Text('Success', style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),),
        
              const SizedBox(height: 20,),
        
              CustomTextWidget(widgetText: 'Congratulations. you have\ncompleted your registration!',
              widgetAlignment: Alignment.center,
              widgetPadding: EdgeInsets.only(left: KMediaQuery(context).width * 0),
              ),
        
              const Spacer(),
        
              CustomBlueButton(buttonWidth: 0.7, buttonText: 'Done', buttonOnPressed: (){}),

              const SizedBox(height: 25,),
        
              
            ],
          ),
        ),
      ),
    );
  }
}