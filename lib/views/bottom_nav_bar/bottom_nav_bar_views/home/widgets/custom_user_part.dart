import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/views/auth/login/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomUserPart extends StatelessWidget
{
  const CustomUserPart({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: double.infinity,
      height: 170.h,
      decoration: BoxDecoration(color: AppColors().kButtonsBlueColor,),
      child: Padding(
        padding: EdgeInsets.only(top: KMediaQuery(context).height * 0.05, left: KMediaQuery(context).width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            BlocBuilder<FirebaseLoginCubit, LoginStates>(
              builder: (context, state)
              {
                if (state is LoginSuccessState)
                {
                  print("Rendering success state with user: ${state.userName}");
                  return Text('Hi, ${state.userName.isNotEmpty ? state.userName : "User"}',
                  style: const TextStyle(color: AppColors.kWhiteColor, fontSize: 25, fontWeight: FontWeight.bold),);
                }                  
                else if (state is LoginFailureState)
                {
                  return Text("Error: ${state.errorMessage}",
                  style: const TextStyle(color: Colors.red),);
                }
                else
                {
                  return const CircularProgressIndicator.adaptive();
                }
              },
            ),

            const SizedBox(height: 5,),

            Text('Let\'s start learning', style: TextStyle(color: AppColors.kWhiteColor, fontSize: 14.sp, fontWeight: FontWeight.bold,),
            ),
          ],
        ),
      ),
    );
  }
}
