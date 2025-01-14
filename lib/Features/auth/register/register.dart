import 'package:courses_app/Core/constants.dart';
import 'package:courses_app/Core/utils/app_router.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Core/widgets/custom_button.dart';
import 'package:courses_app/Core/widgets/custom_column.dart';
import 'package:courses_app/Core/widgets/custom_container.dart';
import 'package:courses_app/Core/widgets/custom_text.dart';
import 'package:courses_app/Core/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';


class RegisterView extends StatefulWidget
{
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

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
                padding: EdgeInsets.only(top: (KMediaQuery(context).height) * 0.1, left: KMediaQuery(context).width * 0.05),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      Text("Sign Up", style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold)),
                      Text("Enter your details below & free sign up", style: Styles.textStyle14),
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
                        fieldObscureText: true,
                        fieldSuffixIcon: Icon(Icons.visibility_off),
                        fieldOnSubmitted: (string)
                        {print(passwordController.text);},
                      ),
                  
                      SizedBox(height: 30,),
                  
                      CustomBlueButton(buttonText: 'Creat account', buttonWidth: 0.9, buttonOnPressed: (){print('Create Account Button Pressed');},),
              
                      SizedBox(height: 20,),
              
                      Padding(
                        padding: EdgeInsets.only(left: KMediaQuery(context).width * 0.02, right: KMediaQuery(context).width * 0.015),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:
                          [

                            Checkbox(value: isChecked, onChanged: (bool? value)
                            {
                              setState((){isChecked = value!;});
                            },
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

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: NeverScrollableScrollPhysics(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Text("Already have an account?", textAlign: TextAlign.center,),
                
                            SizedBox(width: 5,),
                
                            GestureDetector(
                              onTap: (){GoRouter.of(context).push(AppRouter.kLoginView); print('WENT TO\tLOGIN_VIEW');},
                              child: Text("Log in",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Color.fromRGBO(61, 93, 255, 1),
                              fontWeight: FontWeight.w900,
                              fontSize: 14.sp,
                              decoration: TextDecoration.underline),
                              ),
                            ),
                          ],
                        ),
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