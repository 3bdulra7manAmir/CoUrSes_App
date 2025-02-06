import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Core/shared/custom_column.dart';
import 'package:courses_app/Core/shared/custom_container.dart';
import 'package:courses_app/Core/shared/custom_text.dart';
import 'package:courses_app/views/auth/register/widgets/custom_num_register_kb.dart';
import 'package:courses_app/views/auth/register/widgets/custom_phone_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConWPhoneView extends StatelessWidget
{
  const ConWPhoneView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children:
          [
            //BOTTOM Container
            CustomContainerBackGround(
              containerChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:
                [
                  Padding(
                    padding: EdgeInsets.only(top: (KMediaQuery(context).height) * 0.03, left: KMediaQuery(context).width * 0.01),
                    child: Row(
                      children:
                      [
                        IconButton(onPressed: (){print('Eye Icon Has Been Pressed');}, icon: SvgPicture.asset(AppIMGs().kBBIMGSVG)),
                              
                        CustomTextWidget(widgetText: 'Continue with Phone',
                        widgetTextStyle: Styles.textStyle16.copyWith(fontWeight: FontWeight.w900),
                        widgetAlignment: Alignment.center,
                        widgetPadding: EdgeInsets.only(left: KMediaQuery(context).width * 0.13),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: (KMediaQuery(context).height) * 0.01),
                    child: SvgPicture.asset(AppIMGs().kContinueWithPhoneSVG)
                  ),
                  
                ],
              ),
            ),

            //TOP Container
            AfContainerBody(
              topPercentage: 0.35,
              positionedChild: CustomContainerBackGround(
                containerDecoration: const BoxDecoration(
                  color: AppColors.kWhiteColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                ),
                
                containerChild: Column(
                  children:
                  [
                    CustomTextWidget(widgetText: 'Enter Your Phone Number', 
                    widgetAlignment: Alignment.center,
                    widgetPadding: EdgeInsets.only(top: KMediaQuery(context).height * 0.03),
                    ),

                    const SizedBox(height: 30),

                    const PhoneNumberTextFieldAndButton(),
                  ],
                ),
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children:
              [
                CustomNumRegisterKeyboard(phoneRegisterController: PhoneNumberTextFieldAndButtonState.phoneController,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}