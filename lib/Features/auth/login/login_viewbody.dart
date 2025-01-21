// ignore_for_file: use_build_context_synchronously

import 'package:courses_app/Core/constants.dart';
import 'package:courses_app/Core/utils/app_router.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Core/widgets/custom_button.dart';
import 'package:courses_app/Core/widgets/custom_column.dart';
import 'package:courses_app/Core/widgets/custom_container.dart';
import 'package:courses_app/Core/widgets/custom_text.dart';
import 'package:courses_app/Core/widgets/custom_textfield.dart';
import 'package:courses_app/Features/auth/login/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  
  @override
  State<LoginView> createState() => LoginViewState();
}

class LoginViewState extends State<LoginView>
{
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();
  bool obscureText = true;
 
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
    return BlocProvider(
      create: (context) => FirebaseLoginCubit(),
      child: BlocConsumer<FirebaseLoginCubit, LoginStates>(
        builder: (context, state)
        {
          var firebaseLCubit = BlocProvider.of<FirebaseLoginCubit>(context);
          return SafeArea(
            child: Scaffold(
              body: Form(
                key: loginFormKey,
                child: Stack(
                  children:
                  [
                    //BOTTOM Container
                    CustomContainerBackGround(
                      containerChild: Padding(
                        padding: EdgeInsets.only(top: (KMediaQuery(context).height) * 0.07, left: KMediaQuery(context).width * 0.05),
                        child: Align(alignment: Alignment.topLeft,
                          child: Text("Log In", style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold))),
                        ),
                      ),

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

                              CustomTextfield(
                                fieldVaidator: LoginValidator().validateEmail,
                                fieldController: emailController,
                                fieldTextInputType: TextInputType.emailAddress,
                              ),

                              const SizedBox(height: 20,),

                              const CustomTextWidget(widgetText: 'Password',),

                              CustomTextfield(
                                fieldVaidator: LoginValidator().validatePassword,
                                fieldController: passwordController,
                                fieldObscureText: obscureText,
                                fieldSuffixIcon: IconButton(icon: Icon(obscureText? Icons.visibility_off: Icons.visibility,),
                                  onPressed: () {setState(() {obscureText = !obscureText;});},
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
                                // print('Log In Button Pressed');
                                // print("${emailController.text} \t ${passwordController.text}");

                                LoginValidator().submitForm(loginFormKey, context);

                                if ((loginFormKey.currentState?.validate()) != false)
                                {
                                  await firebaseLCubit.firebaseLogin(emailController.text,passwordController.text);
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
          if (state is LoginSuccessState)
          {
            emailController.clear();
            passwordController.clear();
            GoRouter.of(context).push(AppRouter.kHomeView);
            print('WENT TO\tHOME_VIEW');
          }
          if (state is LoginFailureState)
          {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Wrong Email Or Password', style: Styles.textStyle16,)),);
          }
        },
      ),
    );
  }
}
