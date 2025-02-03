// ignore_for_file: use_build_context_synchronously

import 'package:courses_app/Core/exceptions/register_failure.dart';
import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/Core/utils/validators.dart';
import 'package:courses_app/app/app_router.dart';
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
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final TextEditingController firstNameController;
  late final TextEditingController lastNameController;
  
  @override
  void initState()
  {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
  }
  
  //TO PREVENT Memory leak //Tharwat Samy...
  @override
  void dispose()
  {
    emailController.dispose();
    passwordController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
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
              backgroundColor: AppColors.kScaffoldBackgoundColorWhite,
              body: SingleChildScrollView(
                child: Form(
                  key: registerFormKey,
                  child: SizedBox(
                    height: 790.h,
                    child: Stack(
                      children:
                      [
                        //BOTTOM Container
                        CustomSignUpPart(),
                    
                        //TOP Container
                        AfContainerBody(topPercentage: 0.2,
                          positionedChild: CustomContainerBackGround(
                            containerDecoration: BoxDecoration(color: AppColors.kWhiteColor,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),),
                            containerChild: Padding(
                              padding: EdgeInsets.only(top: (KMediaQuery(context).height) * 0.04, left: KMediaQuery(context).width * 0.015),
                              child: Column(
                                children:
                                [
                                  const CustomTextWidget(widgetText: 'First Name',),
                                  CustomTextFormfield(
                                    fieldController: firstNameController,
                                    fieldVaidator: SignUpValidator().validateName,
                                  ),
                                    
                                  const SizedBox(height: 20,),
                                    
                                  const CustomTextWidget(widgetText: 'Last Name',),
                                  CustomTextFormfield(
                                    fieldController: lastNameController,
                                    fieldVaidator: SignUpValidator().validateName,
                                  ),
                                    
                                  const SizedBox(height: 20,),
                                    
                                  const CustomTextWidget(widgetText: 'Your Email',),
                                    
                                  CustomTextFormfield(fieldController: emailController, fieldTextInputType: TextInputType.emailAddress,
                                  fieldVaidator: SignUpValidator().validateEmail,
                                  ),
                                    
                                  const SizedBox(height: 20,),
                                                  
                                  const CustomTextWidget(widgetText: 'Password',),
                                  
                                  CustomTextFormfield(
                                    fieldController: passwordController,
                                    fieldObscureText: firebaseRCubit.isPasswordObscured,
                                    fieldTextInputType: TextInputType.text,
                                    fieldVaidator: SignUpValidator().validatePassword,
                                    fieldSuffixIcon: IconButton(icon: Icon(firebaseRCubit.isPasswordObscured ? Icons.visibility_off : Icons.visibility),
                                    onPressed: firebaseRCubit.togglePasswordVisibility,
                                    ),
                                  ),
                                                  
                                  const SizedBox(height: 30,),
                                                  
                                  CustomBlueButton(buttonText: 'Creat account', buttonWidth: 0.9, buttonOnPressed: () async
                                  {
                                    if (registerFormKey.currentState?.validate() == true && firebaseRCubit.isChecked)
                                    {
                                      await firebaseRCubit.addUserEPFirebaseAuth(emailController.text, passwordController.text, context);
                                      await firebaseRCubit.addUserFNFirebaseAuth(firstNameController.text);
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
                                          value:firebaseRCubit.isChecked,
                                          onChanged: (value) => firebaseRCubit.toggleCheckbox(),
                                          activeColor: AppColors.kBlueColor800,
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
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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

  void signupButtonOnPressed(RegisterStates state, BuildContext context)
  {
    if (loginAllower())
    {
      emailController.clear();
      passwordController.clear();
      firstNameController.clear();
      lastNameController.clear();
      Future.delayed(Duration(seconds: 1), () => GoRouter.of(context).go(AppRouter.kLoginView));
    }
    else if (state is RegisterEmailFailureState)
    {
      FirebaseEPFailure.showError(context, state.errorMessage.message ?? 'An error occurred.');
    }
    else if (state is RegisterFNFailureState)
    {
      FirebaseUFNFailure.showError(context, state.errorMessage);
    }
  }
}