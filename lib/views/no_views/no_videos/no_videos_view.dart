import 'package:courses_app/Core/utils/constants/app_images.dart';
import 'package:courses_app/Core/utils/constants/app_responsive.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Core/shared/custom_blue_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NoVideosView extends StatelessWidget
{
  const NoVideosView({super.key});

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
                  child: SvgPicture.asset(AppIMGs().kBBIMGSVG)),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: KMediaQuery(context).height * 0.2,),
              child: Column(
                children:
                [
                  SvgPicture.asset(AppIMGs().kNoVideosSVG),
                  const SizedBox(height: 10,),
                  Text('No videos!', style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold), ),
                  const SizedBox(height: 10,),
                  Text('here is no video you want at the\nmoment', style: Styles.textStyle14, textAlign: TextAlign.center,),
                  const SizedBox(height: 30,),
                  CustomBlueButton(buttonWidth: 0.7, buttonText: 'Search more', buttonOnPressed: (){print('Search more Button Pressed');})
              
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }
}