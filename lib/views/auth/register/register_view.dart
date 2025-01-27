// ignore_for_file: use_build_context_synchronously

import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/app/app_router.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/Core/shared/custom_button.dart';
import 'package:courses_app/Core/shared/custom_column.dart';
import 'package:courses_app/Core/shared/custom_container.dart';
import 'package:courses_app/Core/shared/custom_text.dart';
import 'package:courses_app/Core/shared/custom_textfield.dart';
import 'package:courses_app/views/auth/register/register_cubit/register_cubit.dart';
import 'package:courses_app/views/auth/register/widgets/custom_sginup_upper_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterView extends StatefulWidget
{
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => RegisterViewState();
}

class RegisterViewState extends State<RegisterView>
{
  final registerFormKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  
  bool isChecked = false;
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
      create: (context) => FirebaseRegisterCubit(),
      child: BlocConsumer<FirebaseRegisterCubit, RegisterStates>(
        builder: (context, state)
        {
          var firebaseRCubit = BlocProvider.of<FirebaseRegisterCubit>(context);
          return SafeArea(
            child: Scaffold(
              body: Form(
                key: registerFormKey,
                child: Stack(
                  children:
                  [
                    //BOTTOM Container
                    CustomSignUpPart(),
                
                    //TOP Container
                    AfContainerBody(topPercentage: 0.2,
                      positionedChild: CustomContainerBackGround(
                        containerDecoration: BoxDecoration(color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),),
                        containerChild: Padding(
                          padding: EdgeInsets.only(top: (KMediaQuery(context).height) * 0.04, left: KMediaQuery(context).width * 0.015),
                          child: Column(
                            children:
                            [
                              const CustomTextWidget(widgetText: 'Your Email',),
                              CustomTextFormfield(fieldController: emailController, fieldTextInputType: TextInputType.emailAddress,
                              fieldVaidator: SignUpValidator().validateEmail,
                              ),

                              const SizedBox(height: 20,),
                
                              const CustomTextWidget(widgetText: 'Password',),
                              CustomTextFormfield(fieldController: passwordController, fieldObscureText: obscureText,
                                fieldTextInputType: TextInputType.text,
                                fieldVaidator: SignUpValidator().validatePassword,
                                fieldSuffixIcon: IconButton(icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility,),
                                  onPressed: () {setState(() {obscureText = !obscureText;});},
                                ),
                              ),
                
                              const SizedBox(height: 30,),
                
                              CustomBlueButton(buttonText: 'Creat account', buttonWidth: 0.9, buttonOnPressed: () async
                              {
                                // print('Create Account Button Pressed');
                                // print("${emailController.text} \t ${passwordController.text}");
                                SignUpValidator().submitForm(registerFormKey, isChecked, context);

                                if ((registerFormKey.currentState?.validate()) != false && isChecked != false)
                                {
                                  await firebaseRCubit.firebaseRegister(emailController.text, passwordController.text, context);
                                }
                              },
                              ),
                
                              const SizedBox(height: 20,),
                
                              Padding(
                                padding: EdgeInsets.only(left: KMediaQuery(context).width * 0.02, right: KMediaQuery(context).width * 0.015),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:
                                  [
                                    Checkbox(
                                      value: isChecked,
                                      onChanged: (bool? value)
                                      {
                                        setState(() => isChecked = value!);
                                        print('Checkbox State: $value');
                                      },
                                      activeColor: Colors.blue[800],
                                    ),
                                    const Flexible(
                                      child: Text("By creating an account you have to agree with our them & condication.",
                                        softWrap: true, // Ensures the text will wrap
                                        overflow: TextOverflow.visible, // Allows text to continue onto the next line
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                
                              const SizedBox(height: 40,),
                
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:
                                [
                                  CustomTextWidget(widgetText: 'Already have an account?', widgetTextStyle: TextStyle(fontSize: 13.sp,),),
                                  GestureDetector(
                                    onTap: ()
                                    {
                                      GoRouter.of(context).push(AppRouter.kLoginView);
                                      print('WENT TO\tLOGIN_VIEW');
                                    },
                                    child: CustomTextWidget(widgetText: 'Log in', widgetTextStyle: TextStyle(fontSize: 14.sp, color: Color.fromRGBO(61, 93, 255, 1),
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              //FOR TEST //HERE //TO BE Deleted 
                              const SizedBox(height: 50,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:
                                [
                                  Text('Just For Show And Test', style: Styles.textStyle16,),

                                  const SizedBox(width: 20),

                                  GestureDetector(
                                    onTap: () {GoRouter.of(context).push(AppRouter.kConWPhoneView);},
                                    child: Icon(Icons.import_export_sharp)),
                                  
                                  const SizedBox(width: 30,),

                                  GestureDetector(
                                    onTap: () {GoRouter.of(context).push(AppRouter.kPhoneOTPView);},
                                    child: Icon(Icons.import_export_sharp)),
                                ],
                              ),
                              //FOR TEST //HERE //TO BE Deleted 

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
          signupButtonOnPressed(state, context);
        },
      ),
    );
  }

  void signupButtonOnPressed(RegisterStates state, BuildContext context) {
    if (state is RegisterSuccessState)
    {
      emailController.clear();
      passwordController.clear();
      obscureText = true;
      setState(() {isChecked = false;});
      Future.delayed(Duration(seconds: 1), () => GoRouter.of(context).go(AppRouter.kLoginView));
    }
    if (state is RegisterFailureState)
    {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('An unexpected error Please Try Again Later!', style: Styles.textStyle16,)),);
    }
  }
}