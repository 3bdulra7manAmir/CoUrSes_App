
import 'package:courses_app/Core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';


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
      borderColor: AppColors.kCustomOTPInputFieldColor,
      showFieldAsBox: true,
      fieldWidth: 50,
      onCodeChanged: onCodeChanged, // Called when code changes
      onSubmit: onCompleted, // Called when all fields are filled
    );
  }
}
