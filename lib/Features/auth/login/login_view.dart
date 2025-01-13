import 'package:courses_app/Core/constants.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Core/widgets/custom_container.dart';
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
        body: Column(
          children:
          [
            CustomContainerBackGround(
              containerHeightPercent: 0.2,
              containerChild: Padding(
                padding: EdgeInsets.only(bottom: 25,left: 20),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("Log In", style: Styles.textStyle30,)
                ),
              ),
            ),

            const SizedBox(height: 20,),

            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Your Email", style: Styles.textStyle14,)
              ),
            ),

            //SizedBox(height: 10,),

            CustomTextfield(
              fieldController: emailController,
              fieldTextInputType: TextInputType.emailAddress,
              fieldOnSubmitted: (string)
              {
                print(emailController.text);
              },
            ),

            SizedBox(height: 30,),

            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Password", style: Styles.textStyle14,)
              ),
            ),

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

            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text("Forget Password?", style: Styles.textStyle14,)
              ),
            ),

            SizedBox(height: 20,),
            
            //CustomBlueButton(),
          ],
        ),
      ),
    );
  }
}

class CustomBlueButton extends StatelessWidget
{
  const CustomBlueButton({super.key, required this.buttonWidth, this.buttonHeight, required this.buttonText, this.buttonOnPressed,});

  final double buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final void Function()? buttonOnPressed;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      width: KMediaQuery(context).width * buttonWidth,
      //height: KMediaQuery(context).height * buttonHeight ?? 0.06,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Color((0xff3d5cff))),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
      onPressed: () {},
      child: Center(child: Text(buttonText, style: Styles.textStyle16.copyWith(color: Colors.white),)),
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
