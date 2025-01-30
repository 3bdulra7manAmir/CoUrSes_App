import 'package:courses_app/Core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormfield extends StatelessWidget
{
  const CustomTextFormfield({super.key,
  required this.fieldController,
  //required this.fieldOnSubmitted,

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
  //final void Function(String) fieldOnSubmitted;

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
        //onSubmitted: fieldOnSubmitted,
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
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}


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
        //validator: fieldVaidator,
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
            borderSide: BorderSide(color: Colors.grey, style: BorderStyle.solid),
          ),
        ),
      ),
    );
  }
}