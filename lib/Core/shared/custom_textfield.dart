import 'package:courses_app/Core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomTextfield extends StatelessWidget
{
  const CustomTextfield({super.key,
  required this.fieldController,
  this.fieldOnSubmitted,

  this.fieldHintText,
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
  
  this.fieldfFillColor,
  required this.fieldBoolFilled,

  });

  final TextEditingController fieldController;
  final TextInputType? fieldTextInputType;
  final TextAlign? fieldTextAlign;
  final TextDirection? fieldTextDirection;
  final String? fieldHintText;
  final bool? fieldObscureText;

  final void Function(String)? fieldOnSubmitted;

  final double? fieldCursorHeight;
  
  final Widget? fieldSuffixIcon;
  final Widget? fieldPrefixIcon;

  final Color? fieldCursorColor;
  final Color? fieldSuffixIconColor;
  final Color? fieldPrefixIconColor;
  final Color? fieldfFillColor;

  final bool? fieldBoolFilled;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      width: KMediaQuery(context).width * 0.9,
      child: TextField(
        controller: fieldController,
        onSubmitted: fieldOnSubmitted,
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
          hintText: fieldHintText,
          filled: fieldBoolFilled,
          fillColor: fieldfFillColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.r)),
            borderSide: const BorderSide(color: AppColors.kGreyColor, style: BorderStyle.solid),
          ),
        ),
      ),
    );
  }
}