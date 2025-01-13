import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Core/widgets/custom_button.dart';
import 'package:courses_app/Core/widgets/custom_container.dart';
import 'package:courses_app/Core/widgets/custom_text.dart';
import 'package:courses_app/Core/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';


class LoginView extends StatelessWidget
{
  LoginView({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children:
            [
              CustomContainerBackGround(
                containerHeightPercent: 0.2,
                containerChild: Padding(
                  padding: EdgeInsets.only(bottom: 25,left: 20),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Log In", style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold))
                  ),
                ),
              ),

              const SizedBox(height: 20,),
          
              Column(
                children:
                [
                  CustomTextWidget(widgetText: 'Your Email',),
                            
                  CustomTextfield(
                    fieldController: emailController,
                    fieldTextInputType: TextInputType.emailAddress,
                    fieldOnSubmitted: (string)
                    {
                      print(emailController.text);
                    },
                  ),
              
                  SizedBox(height: 20,),
              
                  CustomTextWidget(widgetText: 'Password',),
              
                  //SizedBox(height: 10,),
              
                  CustomTextfield(
                    fieldController: passwordController,
                    fieldObscureText: true,
                    fieldSuffixIcon: Icon(Icons.visibility_off),
                    fieldOnSubmitted: (string)
                    {
                      print(passwordController.text);
                    },
                  ),
              
                  SizedBox(height: 20,),
              
                  CustomTextWidget(widgetText: 'Forget Password?', widgetAlignment: Alignment.centerRight, widgetPadding: EdgeInsets.only(right: 20),),
              
                  SizedBox(height: 20,),
                  
                  CustomBlueButton(buttonText: 'Log In', buttonWidth: 0.9, buttonOnPressed: (){},),

                  SizedBox(height: 30,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      Text("Don't have an account?", textAlign: TextAlign.center,),

                      SizedBox(width: 5,),

                      GestureDetector(
                        onTap: (){},
                        child: Text("Sign up", textAlign: TextAlign.center, style: TextStyle(color: Color.fromRGBO(61, 93, 255, 1)),)
                      )
                    ],
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}





// class CustomBlueButton extends StatelessWidget
// {
//   const CustomBlueButton({super.key,});

//   final double buttonWidth;
//   final double buttonHeight;

//   @override
//   Widget build(BuildContext context)
//   {
//     return SizedBox(
//       width: KMediaQuery(context).width * 0.9,
//       height: KMediaQuery(context).height * 0.06,
//       child: ElevatedButton(
//         style: ButtonStyle(
//           backgroundColor: WidgetStateProperty.all(Color((0xff3d5cff))),
//           shape: WidgetStateProperty.all(RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12.0),
//           ),
//         ),
//       ),
//       onPressed: () {},
//       child: Center(child: Text('Log in', style: Styles.textStyle16.copyWith(color: Colors.white),)),
//       ),
//     );
//   }
// }
