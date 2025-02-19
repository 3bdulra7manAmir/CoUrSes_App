import 'package:courses_app/Core/utils/constants/app_images.dart';
import 'package:courses_app/Core/utils/constants/app_responsive.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NoNotifictationsView extends StatelessWidget
{
  const NoNotifictationsView({super.key});

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
                  SvgPicture.asset(AppIMGs().kNoNotificationsSVG),
                  const SizedBox(height: 10,),
                  Text('No Notifictations yet!', style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold), ),
                  const SizedBox(height: 10,),
                  Text('We\'ll notify you once we have\nsomething for you', style: Styles.textStyle14, textAlign: TextAlign.center,),
              
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}