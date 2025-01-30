import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/views/auth/login/login_cubit/login_cubit.dart';
import 'package:courses_app/views/auth/register/register_cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomUserPart extends StatelessWidget
{
  const CustomUserPart({super.key});

  final String userName = "Shadow";

  @override
  Widget build(BuildContext context)
  {
    return BlocConsumer<FirebaseRegisterCubit, RegisterStates>(
      builder: (context, state)
      {
        if(state is LoginSuccessState)
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
                  Text('Hi, $userName', style: TextStyle(color: Colors.white, fontSize: 25.sp, fontWeight: FontWeight.bold,),),

                  const SizedBox(height: 5,),

                  Text('Let\'s start learning', style: TextStyle(color: Colors.white, fontSize: 14.sp, fontWeight: FontWeight.bold,),),
                ],
              ),
            ),
          );
        }
        else
        {
          return Center(child: CircularProgressIndicator.adaptive(),);
        }
        
      },

      listener: (context, state)
      {
        
      },
    );
  }
}
