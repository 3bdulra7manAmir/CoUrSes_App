// ignore_for_file: use_build_context_synchronously

import 'package:courses_app/Core/constants.dart';
import 'package:courses_app/Core/utils/app_router.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Core/widgets/custom_button.dart';
import 'package:courses_app/Core/widgets/custom_column.dart';
import 'package:courses_app/Core/widgets/custom_container.dart';
import 'package:courses_app/Core/widgets/custom_text.dart';
import 'package:courses_app/Core/widgets/custom_textfield.dart';
import 'package:courses_app/Features/auth/register/firebase_register_auth_cubit/firebase_register_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';


class LoginView extends StatefulWidget
{
  const LoginView({super.key});
  static bool isUserSigned = false;
  
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView>
{
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscureText = true;
  
  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children:
          [
            //BOTTOM Container
            CustomContainerBackGround(
              containerChild: Padding(
                padding: EdgeInsets.only(top: (KMediaQuery(context).height) * 0.07, left: KMediaQuery(context).width * 0.05),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Log In", style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold))
                ),
              ),
            ),

            //TOP Container
            AfContainerBody(
              topPercentage: 0.2,
              positionedChild: CustomContainerBackGround(
                containerDecoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                ),
                
                containerChild: Padding(
                  padding: EdgeInsets.only(top: (KMediaQuery(context).height) * 0.04, left: KMediaQuery(context).width * 0.015),
                  child: Column(
                    children:
                    [
                      CustomTextWidget(widgetText: 'Your Email',),
                                
                      CustomTextfield(
                        fieldController: emailController,
                        fieldTextInputType: TextInputType.emailAddress,
                        fieldOnSubmitted: (string) {print(emailController.text);},
                      ),
                  
                      SizedBox(height: 20,),
                  
                      CustomTextWidget(widgetText: 'Password',),
                                    
                      CustomTextfield(
                        fieldController: passwordController,
                        fieldObscureText: obscureText,
                        fieldSuffixIcon: IconButton(icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility,),
                        onPressed: () {setState(() {obscureText = !obscureText;});},),
                        fieldOnSubmitted: (string)
                        {print(passwordController.text);},
                      ),
                  
                      SizedBox(height: 20,),
                  
                      GestureDetector(
                        onTap: (){print("Forget Password Pressed");},
                        child: CustomTextWidget(widgetText: 'Forget Password?', widgetAlignment: Alignment.centerRight, widgetPadding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.045),)),
                  
                      SizedBox(height: 20,),
                      
                      CustomBlueButton(buttonText: 'Log In', buttonWidth: 0.9, buttonOnPressed: () async
                      {
                        print('Log In Button Pressed');
                        print("${emailController.text} \t ${passwordController.text}");

                        await firebaseLoginAuth(emailController.text, passwordController.text);
                        emailController.clear();
                        passwordController.clear();

                        if(LoginView.isUserSigned)
                        {
                          GoRouter.of(context).push(AppRouter.kHomeView);
                        }                        
                      },),
              
                      SizedBox(height: 30,),
              
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          CustomTextWidget(widgetText: "Don't have an account?",),
              
                          SizedBox(width: 5,),
              
                          GestureDetector(
                            onTap: (){GoRouter.of(context).push(AppRouter.kRegisterView); print('WENT TO\tREGISTER_VIEW');},
                            child: CustomTextWidget(widgetText: "Sign Up", widgetTextStyle: TextStyle(color: Color.fromRGBO(61, 93, 255, 1)),
                          ),),
                        ],
                      ),

                      SizedBox(height: 30,),

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: NeverScrollableScrollPhysics(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          
                          children:
                          [
                            Text("______________",), //OR DIVIDER
                            SizedBox(width: 25,),
                        
                            Text("Or login with", style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w400),),
                        
                            SizedBox(width: 25,),
                        
                            Text("______________"), //OR DIVIDER
                          ],
                        ),
                      ),

                      SizedBox(height: 20,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,                        
                        children:
                        [
                          GestureDetector(
                            onTap: (){print('Google IMG Pressed');},
                            child: SvgPicture.asset('assets/images/svg/Google_Platform.svg')),

                          SizedBox(width: 50,),

                          GestureDetector(
                            onTap: (){print('Facebook IMG Pressed');},
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
    );
  }
}