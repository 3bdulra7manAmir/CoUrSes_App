import 'package:courses_app/Core/constants.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget
{
  const CustomTextfield({super.key,
  required this.fieldController, this.fieldObscureText, this.fieldTextAlign,
  this.fieldTextDirection, this.fieldTextInputType, this.fieldCursorColor,
  this.fieldCursorHeight, required this.fieldOnSubmitted, this.fieldSuffixIcon,
  this.fieldPrefixIcon, this.fieldSuffixIconColor, this.fieldPrefixIconColor});

  final TextEditingController fieldController;
  final TextInputType? fieldTextInputType;
  final bool? fieldObscureText;
  final TextAlign? fieldTextAlign;
  final TextDirection? fieldTextDirection;
  final Color? fieldCursorColor;
  final double? fieldCursorHeight;
  final void Function(String) fieldOnSubmitted;

  final Widget? fieldSuffixIcon;
  final Widget? fieldPrefixIcon;
  final Color? fieldSuffixIconColor;
  final Color? fieldPrefixIconColor;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      //height: KMediaQuery(context).height * 0,
      width: KMediaQuery(context).width * 0.9,
      child: TextField(
        controller: fieldController,
        obscureText: fieldObscureText ?? false,
        textAlign: fieldTextAlign ?? TextAlign.start,
        textDirection: fieldTextDirection,
        keyboardType: fieldTextInputType,
        cursorColor: fieldCursorColor,
        cursorHeight: fieldCursorHeight,
        onSubmitted: fieldOnSubmitted,
        
        decoration: InputDecoration(
          suffixIcon: fieldSuffixIcon,
          suffixIconColor: fieldSuffixIconColor,
          prefixIcon: fieldPrefixIcon,
          prefixIconColor: fieldPrefixIconColor,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
          ),
        ),
      ),
    );
  }
}