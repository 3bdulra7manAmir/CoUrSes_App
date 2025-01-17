import 'package:courses_app/Core/constants.dart';
import 'package:courses_app/Core/utils/app_router.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Core/widgets/custom_button.dart';
import 'package:courses_app/Core/widgets/custom_column.dart';
import 'package:courses_app/Core/widgets/custom_container.dart';
import 'package:courses_app/Core/widgets/custom_text.dart';
import 'package:courses_app/Core/widgets/custom_textfield.dart';
import 'package:courses_app/Features/auth/firebase_auth/firebase_auth_cubit/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';


class RegisterView extends StatefulWidget
{
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView>
{

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscureText = true;
  bool isChecked = false;

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
                padding: EdgeInsets.only(top: (KMediaQuery(context).height) * 0.07, left: KMediaQuery(context).width * 0.05,),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      CustomTextWidget(widgetText: 'Sign Up', widgetTextStyle: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),),
                      CustomTextWidget(widgetText: 'Enter your details below & free sign up', widgetTextStyle: Styles.textStyle14,),
                    ],
                  )
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
                  
                      SizedBox(height: 30,),
                  
                      CustomBlueButton(buttonText: 'Creat account', buttonWidth: 0.9, buttonOnPressed: () async
                        {
                          print('Create Account Button Pressed');
                          print("${emailController.text} \t ${passwordController.text}");

                          await firebaseRegisterAuth(emailController.text, passwordController.text);
                          
                          emailController.clear();
                          passwordController.clear();
                        },
                      ),
              
                      SizedBox(height: 20,),
              
                      Padding(
                        padding: EdgeInsets.only(left: KMediaQuery(context).width * 0.02, right: KMediaQuery(context).width * 0.015),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:
                          [

                            Checkbox(value: isChecked, onChanged: (bool? value)
                            {setState((){isChecked = value!;});},
                            activeColor: Colors.blue[800],
                            ),

                            Flexible(
                              child: Text("By creating an account you have to agree with our them & condication.",
                              softWrap: true, // Ensures the text will wrap
                              overflow: TextOverflow.visible, // Allows text to continue onto the next line
                              ),
                            ),

                          ],
                        ),
                      ),

                      SizedBox(height: 40,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          CustomTextWidget(widgetText: 'Already have an account?', widgetTextStyle: TextStyle(fontSize: 13.sp,),),
                          
                          GestureDetector(
                            onTap: (){GoRouter.of(context).push(AppRouter.kLoginView); print('WENT TO\tLOGIN_VIEW');},
                            child: CustomTextWidget(widgetText: 'Log in',
                            widgetTextStyle: TextStyle(fontSize: 14.sp, color:Color.fromRGBO(61, 93, 255, 1), decoration: TextDecoration.underline, fontWeight: FontWeight.w900,
                            ),),
                          ),
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