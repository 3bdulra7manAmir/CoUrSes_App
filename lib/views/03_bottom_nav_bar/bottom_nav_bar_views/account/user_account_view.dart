import 'dart:convert';


import 'package:courses_app/Core/utils/constants/app_images.dart';
import 'package:courses_app/Core/utils/constants/app_responsive.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Core/shared/custom_text_widget.dart';
import 'package:courses_app/views/03_bottom_nav_bar/bottom_nav_bar_views/account/account_cubit/user_account_cubit.dart';
import 'package:courses_app/views/03_bottom_nav_bar/bottom_nav_bar_views/account/account_cubit/user_account_state.dart';
import 'package:courses_app/views/03_bottom_nav_bar/bottom_nav_bar_views/account/widgets/custom_details_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
              widgetText: 'Account', widgetTextStyle: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold, fontSize: 24.sp),
              widgetPadding: EdgeInsets.only(top: KMediaQuery(context).height * 0.02, left: KMediaQuery(context).width * 0.04),
            ),

            const SizedBox(height: 45),

            Align(
                alignment: Alignment.center,
                child: BlocConsumer<FirebaseUserAccountCubit, FirebaseUserAccountStates>(
                listener: (context, state)
                {
                  if (state is FirebaseUserAccountFailure)
                  {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.errorMessage)),);
                  }
                },
                builder: (context, state)
                {
                  if (state is FirebaseUserAccountSuccess)
                  {
                    return GestureDetector(
                      onTap: () async {await context.read<FirebaseUserAccountCubit>().uploadUserImage();},
                      child: CircleAvatar(backgroundImage:MemoryImage(base64Decode(state.imageBase64)), radius: 50,),
                    );
                  }

                  else
                  {
                    return GestureDetector(
                      onTap: () async {await context.read<FirebaseUserAccountCubit>().uploadUserImage();},
                      child: SvgPicture.asset(AppIMGs().kProfileAvatarSVG),
                    );
                  }
                },
              ),
            ),

            const SizedBox(height: 30,),

            const CustomUserDetailsList(),
          ],
        ),
      ),
    );
  }
}
