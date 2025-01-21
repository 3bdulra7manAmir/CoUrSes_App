import 'package:courses_app/Core/constants.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NoNetworkConnectionView extends StatelessWidget
{
  const NoNetworkConnectionView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children:
          [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: KMediaQuery(context).height * 0.04 , left: KMediaQuery(context).width * 0.05),
                child: GestureDetector(
                  onTap: (){print('Eye IMG Pressed');},
                  child: SvgPicture.asset('assets/images/svg/Eye.svg')),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: KMediaQuery(context).height * 0.2,),
              child: Column(
                children:
                [
                  SvgPicture.asset('assets/images/svg/No_Notifications.svg'),
                  const SizedBox(height: 10,),
                  Text('No Network!', style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold), ),
                  const SizedBox(height: 10,),
                  Text('Please check your internet\nconnection and try again', style: Styles.textStyle14, textAlign: TextAlign.center,),
                  const SizedBox(height: 30,),
                  CustomBlueButton(buttonWidth: 0.7, buttonText: 'Try again', buttonOnPressed: (){print('Try Again Button Pressed');})
              
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }
}