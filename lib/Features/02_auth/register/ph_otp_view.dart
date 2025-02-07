
import 'package:courses_app/Core/utils/constants/app_responsive.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Core/shared/custom_blue_button.dart';
import 'package:courses_app/Core/shared/custom_text_widget.dart';
import 'package:courses_app/Features/02_auth/register/widgets/custom_num_otp_kb.dart';
import 'package:courses_app/Features/02_auth/register/widgets/custom_otp_inputfield.dart';
import 'package:flutter/material.dart';

class PhoneOTPView extends StatefulWidget
{
  const PhoneOTPView({super.key});

  @override
  State<PhoneOTPView> createState() => _PhoneOTPViewState();
}

class _PhoneOTPViewState extends State<PhoneOTPView>
{
  final TextEditingController otpController = TextEditingController();

  //TO PREVENT Memory leak //Tharwat Samy...
  @override
  void dispose()
  {
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children:
          [
            Row(
              children:
              [
                IconButton(onPressed: (){}, icon: const Icon(Icons.close,)),
                CustomTextWidget(widgetText: 'Verify Phone', widgetTextStyle: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
                widgetPadding: EdgeInsets.only(top: KMediaQuery(context).height * 0.05, left: KMediaQuery(context).width * 0.26),
                widgetAlignment: Alignment.center,
                )
              ],
            ),
        
            const SizedBox(height: 70),
        
            Text('Code is Sent to 283 835 2999', style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w900)),
        
            const SizedBox(height: 15),
        
            CustomOTPInputField(onCompleted: (string) {}),
        
            const SizedBox(height: 70),
        
            CustomBlueButton(buttonWidth: 0.8, buttonText: 'Verify and Create Account', buttonOnPressed: (){}),
            
            const Spacer(),
        
            CustomNumOTPKeyboard(otpController: otpController),
          ],
        ),
      ),
    );
  }
}