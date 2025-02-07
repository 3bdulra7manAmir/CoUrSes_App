import 'package:courses_app/Core/shared/custom_blue_button.dart';
import 'package:courses_app/Core/shared/custom_text_widget.dart';
import 'package:courses_app/Core/utils/constants/app_images.dart';
import 'package:courses_app/Core/utils/constants/app_responsive.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/views/04_course_preview/widgets/pay_now_bms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PayNowView extends StatelessWidget
{
  const PayNowView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children:
            [
              Row(
                children:
                [
                  IconButton(onPressed: () {print('Eye Icon Has Been Pressed');},
                  icon: const Icon(Icons.close)
                  ),
                  
                  CustomTextWidget(
                    widgetText: 'Payment Method',
                    widgetTextStyle: Styles.textStyle16.copyWith(fontWeight: FontWeight.w900),
                    widgetPadding: EdgeInsets.only(left: KMediaQuery(context).width * 0.13),
                  ),
                ],
              ),

              const SizedBox(height: 100,),
              
              Align(
                alignment: Alignment.center,
                child: Column(
                  children:
                  [
                    SizedBox(
                      height: 180.h,
                      child: SvgPicture.asset(AppIMGs().kPaymentCardSVG),
                    ),
                
                    const SizedBox(height: 60),
                
                    CustomBlueButton(
                      buttonWidth: 0.9,
                      buttonText: 'Pay Now',
                      buttonOnPressed: (){print('PayNow Button has been clicked'); BMSPayMentItself.show(context);}
                    ),
                  ],
                ),
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}