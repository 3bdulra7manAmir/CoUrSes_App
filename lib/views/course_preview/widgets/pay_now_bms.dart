import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/views/auth/register/widgets/custom_num_otp_kb.dart';
import 'package:courses_app/views/auth/register/widgets/custom_otp_inputfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BMSPayMentItself extends StatefulWidget
{
  const BMSPayMentItself({super.key});

  @override
  State<BMSPayMentItself> createState() => BMSPayMentItselfState();

  static void show(BuildContext context)
  {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25.r),),),
      builder: (BuildContext context) => BMSPayMentItself(),
    );
  }
}

class BMSPayMentItselfState extends State<BMSPayMentItself>
{
  @override
  Widget build(BuildContext context)
  {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children:
          [
            
            Align(
              alignment: Alignment.center,
              child: Column(
                children:
                [
                  Text("Payment Password", style: Styles.textStyle18,),
      
                  const SizedBox(height: 5,),
      
                  const Text("Please enter the payment password"),
                ],
              ),
            ),
      
            const SizedBox(height: 25,),
                      
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: KMediaQuery(context).width * 0.05, right: KMediaQuery(context).width * 0.05),
                child: CustomOTPInputField(onCompleted: (string) {}, numberOfFields: 6,),
              ),
            ),
                      
            const SizedBox(height: 10,),
                      
            const CustomNumOTPKeyboard(),
      
          ],
        ),
      ),
    );
  }
}




