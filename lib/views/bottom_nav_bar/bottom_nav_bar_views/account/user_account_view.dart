import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Core/shared/custom_text.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/account/widgets/custom_details_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserAccountView extends StatelessWidget
{
  const UserAccountView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children:
          [
            CustomTextWidget(
              widgetText: 'Account',
              widgetTextStyle: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold, fontSize: 24.sp),
              widgetPadding: EdgeInsets.only(top: KMediaQuery(context).height * 0.02, left: KMediaQuery(context).width * 0.04),
            ),
            
            const SizedBox(height: 45),

            Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(AppIMGs().kProfileAvatarSVG)
            ),

            const SizedBox(height: 30,),
            
            const CustomUserDetailsList(),
          ],
        ),
      ),
    );
  }
}



