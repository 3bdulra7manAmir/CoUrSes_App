import 'package:courses_app/Core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneNumberTextFieldAndButton extends StatefulWidget
{
  const PhoneNumberTextFieldAndButton({super.key});

  @override
  State<PhoneNumberTextFieldAndButton> createState() => PhoneNumberTextFieldAndButtonState();
}

class PhoneNumberTextFieldAndButtonState extends State<PhoneNumberTextFieldAndButton>
{
  static final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.only(left: 15.w),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Row(
          children:
          [
            Expanded(
              child: TextField(
                readOnly: true,
                enableInteractiveSelection: false,
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '+63 283 835 2999',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 16.sp),
                ),
              ),
            ),
            
            SizedBox(width: 20),
      
            SizedBox(
              height: 45.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors().kButtonsBlueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                onPressed: () {print('Continue Button Pressed');},
                child: Text('Continue', style: TextStyle(fontSize: 16.sp, color: AppColors.kWhiteColor, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //TO PREVENT Memory leak //Tharwat Samy...
  @override
  void dispose()
  {
    phoneController.dispose();
    super.dispose();
  }
}