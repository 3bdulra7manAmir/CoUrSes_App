// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOTPInputField extends StatelessWidget
{
  const CustomOTPInputField({super.key, this.numberOfFields = 4, required this.onCompleted, this.onCodeChanged,});

  final int numberOfFields;
  final ValueChanged<String> onCompleted;
  final ValueChanged<String>? onCodeChanged;

  @override
  Widget build(BuildContext context)
  {
    return OtpTextField(
      numberOfFields: numberOfFields,
      borderColor: const Color(0xFF512DA8),
      showFieldAsBox: true,
      fieldWidth: 50,
      onCodeChanged: onCodeChanged, // Called when code changes
      onSubmit: onCompleted, // Called when all fields are filled
    );
  }
}
