// ignore_for_file: use_build_context_synchronously

import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/Core/utils/validators.dart';
import 'package:courses_app/app/app_router.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Core/shared/custom_button.dart';
import 'package:courses_app/Core/shared/custom_column.dart';
import 'package:courses_app/Core/shared/custom_container.dart';
import 'package:courses_app/Core/shared/custom_text.dart';
import 'package:courses_app/Core/shared/custom_textfield.dart';
import 'package:courses_app/views/auth/login/login_cubit/login_cubit.dart';
import 'package:courses_app/views/auth/login/widgets/custom_upper_login_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatefulWidget
{
  const LoginView({super.key});
  
  @override
  State<LoginView> createState() => LoginViewState();
}

class LoginViewState extends State<LoginView>
{
  static final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();
 
  //TO PREVENT Memory leak //Tharwat Samy...
  @override
  void dispose()
  {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    return BlocConsumer<FirebaseLoginCubit, LoginStates>(
      builder: (context, state)
      {
        var firebaseLCubit = context.read<FirebaseLoginCubit>();
        return SafeArea(
          child: Scaffold(
            body: Form(
              key: loginFormKey,
              child: Stack(
                children:
                [
                  //BOTTOM Container
                  CustomWordLoginPart(),
    
                  //TOP Container
                  AfContainerBody(
                    topPercentage: 0.2,
                    positionedChild: CustomContainerBackGround(
                      containerDecoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r), topRight: Radius.circular(10.r)),),
                      containerChild: Padding(
                        padding: EdgeInsets.only(top: (KMediaQuery(context).height) * 0.04, left: KMediaQuery(context).width * 0.015),
                        child: Column(
                          children:
                          [
                            const CustomTextWidget(widgetText: 'Your Email',),
    
                            CustomTextFormfield(
                              fieldVaidator: LoginValidator().validateEmail,
                              fieldController: emailController,
                              fieldTextInputType: TextInputType.emailAddress,
                            ),
    
                            const SizedBox(height: 20,),
    
                            const CustomTextWidget(widgetText: 'Password',),
    
                            CustomTextFormfield(
                              fieldVaidator: LoginValidator().validatePassword,
                              fieldController: passwordController,
                              fieldObscureText: firebaseLCubit.isPasswordObscured,
                              fieldSuffixIcon: IconButton(icon: Icon(firebaseLCubit.isPasswordObscured ? Icons.visibility_off : Icons.visibility),
                              onPressed: firebaseLCubit.togglePasswordVisibility,
                                ),
                              ),
                            
    
                            const SizedBox(height: 20,),
    
                            GestureDetector(
                                onTap: () {print("Forget Password Pressed");},
                                child: CustomTextWidget(widgetText: 'Forget Password?', widgetAlignment: Alignment.centerRight,
                                  widgetPadding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.045),)),
    
                            const SizedBox(height: 20,),
    
                            CustomBlueButton(buttonText: 'Log In', buttonWidth: 0.9, buttonOnPressed: () async
                            {
                              LoginValidator().submitForm(loginFormKey, context);
                              if (loginFormKey.currentState?.validate() == true)
                              {
                                await firebaseLCubit.firebaseLogin(emailController.text, passwordController.text,);
                              }
                            },
                            ),
    
                            const SizedBox(height: 30,),
    
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                CustomTextWidget(widgetText: "Don't have an account?",),
    
                                const SizedBox(width: 5,),
    
                                GestureDetector(
                                  onTap: ()
                                  {
                                    GoRouter.of(context).push(AppRouter.kRegisterView);
                                    print('WENT TO\tREGISTER_VIEW');
                                  },
                                  child: CustomTextWidget(widgetText: "Sign Up", widgetTextStyle: TextStyle(color: Color.fromRGBO(61, 93, 255, 1)),),
                                ),
                              ],
                            ),
    
                            const SizedBox(height: 30,),
    
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: NeverScrollableScrollPhysics(),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:
                                [
                                  const Text("______________",), //OR DIVIDER
                                  const SizedBox(width: 25,),
                                  Text("Or login with", style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w400),),
                                  const SizedBox(width: 25,),
                                  const Text("______________"), //OR DIVIDER
                                ],
                              ),
                            ),
    
                            const SizedBox(height: 20,),
    
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                GestureDetector(
                                    onTap: () {print('Google IMG Pressed');},
                                    child: SvgPicture.asset('assets/images/svg/Google_Platform.svg')),
    
                                const SizedBox(width: 50,),
    
                                GestureDetector(
                                    onTap: () {print('Facebook IMG Pressed');},
                                    child: SvgPicture.asset('assets/images/svg/Facebook_Platform.svg')),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      listener: (context, state)
      {
        loginButtonOnPressed(state, context);
      },
    );
  }

  
  void loginButtonOnPressed(LoginStates state, BuildContext context)
  {
    if (state is LoginSuccessState)
    {
      emailController.clear();
      passwordController.clear();
      GoRouter.of(context).push(AppRouter.kBottomNavBar);
      print('WENT TO\tHOME_VIEW');
    }
    else if (state is LoginFailureState)
    {
       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.errorMessage, style: Styles.textStyle16)),);
    }
  }


}


