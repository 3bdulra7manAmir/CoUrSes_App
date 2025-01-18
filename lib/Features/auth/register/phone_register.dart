import 'package:courses_app/Core/constants.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Core/widgets/custom_column.dart';
import 'package:courses_app/Core/widgets/custom_container.dart';
import 'package:courses_app/Core/widgets/custom_text.dart';
import 'package:courses_app/Features/auth/register/widgets/numeric_keyboard.dart';
import 'package:courses_app/Features/auth/register/widgets/phoneinput.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContinueWithPhone extends StatelessWidget
{
  const ContinueWithPhone({super.key});

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
                        IconButton(onPressed: (){print('Eye Icon Has Been Pressed');}, icon: SvgPicture.asset('assets/images/svg/Eye.svg')),
                              
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
                    child: SvgPicture.asset('assets/images/svg/ContinueWithPhone.svg')
                  ),
                  
                ],
              ),
            ),

            //TOP Container
            AfContainerBody(
              topPercentage: 0.35,
              positionedChild: CustomContainerBackGround(
                containerDecoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                ),
                
                containerChild: Column(
                  children:
                  [
                    CustomTextWidget(widgetText: 'Enter Your Phone Number', 
                    widgetAlignment: Alignment.center,
                    widgetPadding: EdgeInsets.only(top: KMediaQuery(context).height * 0.03),
                    ),

                    SizedBox(height: 30),

                    CustomPhoneNumberInput(),

                    SingleChildScrollView(
                      child: CustomNumericKeyboard(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}