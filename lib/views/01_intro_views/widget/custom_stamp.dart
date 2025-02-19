
import 'package:courses_app/Core/shared/custom_text_widget.dart';
import 'package:courses_app/Core/utils/constants/app_responsive.dart';
import 'package:courses_app/app/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class TheConnected3Stamp extends StatelessWidget
{
  const TheConnected3Stamp({super.key, this.skipText, required this.imagePath, required this.afterImageText1, required this.afterImageText2,});

  final String? skipText;
  final String imagePath;
  final String afterImageText1;
  final String afterImageText2;
  

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:
      [
        GestureDetector(
          onTap: (){GoRouter.of(context).push(AppRouter.kRegisterView);},
          child: CustomTextWidget(widgetText: skipText ?? '', widgetAlignment: Alignment.centerRight, widgetPadding: EdgeInsets.only(top: KMediaQuery(context).height * 0.03, right: KMediaQuery(context).width * 0.05),)),
    
        const SizedBox(height: 20,),
    
        SvgPicture.asset(imagePath),
    
        const SizedBox(height: 20,),
    
        Text(afterImageText1, style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,),
    
        const SizedBox(height: 20,),
    
        Text(afterImageText2, style: TextStyle(fontSize: 14.sp), textAlign: TextAlign.center,),
      ],
    );
  }
}