import 'package:courses_app/Core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormfield extends StatelessWidget
{
  const CustomTextFormfield({super.key,
  required this.fieldController,

  this.fieldObscureText,
  this.fieldTextAlign,
  this.fieldTextDirection,
  this.fieldTextInputType,
  this.fieldCursorColor,
  this.fieldCursorHeight,
  this.fieldSuffixIcon,
  this.fieldPrefixIcon,
  this.fieldSuffixIconColor,
  this.fieldPrefixIconColor,
  this.fieldVaidator, this.fieldWidth, this.fieldHeight,
  
  });

  final TextEditingController fieldController;
  final String? Function(String?)? fieldVaidator;

  final TextInputType? fieldTextInputType;
  final bool? fieldObscureText;
  final TextAlign? fieldTextAlign;
  final TextDirection? fieldTextDirection;
  final Color? fieldCursorColor;
  final double? fieldCursorHeight;
  
  final Widget? fieldSuffixIcon;
  final Widget? fieldPrefixIcon;
  final Color? fieldSuffixIconColor;
  final Color? fieldPrefixIconColor;

  final double? fieldWidth;
  final double? fieldHeight;
  
  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      width: fieldWidth ?? KMediaQuery(context).width * 0.9,
      height: fieldHeight ?? 60.h,
      child: TextFormField(
        controller: fieldController,
        validator: fieldVaidator,
        obscureText: fieldObscureText ?? false,
        
        textAlign: fieldTextAlign ?? TextAlign.start,
        textDirection: fieldTextDirection ?? TextDirection.ltr,
        keyboardType: fieldTextInputType ?? TextInputType.name,
        cursorColor: fieldCursorColor ?? Colors.black,
        cursorHeight: fieldCursorHeight,

        // Deny spaces in the input
        inputFormatters: [FilteringTextInputFormatter.deny(RegExp(r'\s')), ], // Deny spaces

        decoration: InputDecoration(
          suffixIcon: fieldSuffixIcon,
          suffixIconColor: fieldSuffixIconColor,
          prefixIcon: fieldPrefixIcon,
          prefixIconColor: fieldPrefixIconColor,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
            borderSide: const BorderSide(color: AppColors.kGreyColor),
          ),
        ),
      ),
    );
  }
}