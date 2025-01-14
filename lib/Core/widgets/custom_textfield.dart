import 'package:courses_app/Core/constants.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget
{
  const CustomTextfield({super.key,
  required this.fieldController,
  required this.fieldOnSubmitted,

  this.fieldObscureText,
  this.fieldTextAlign,
  this.fieldTextDirection,
  this.fieldTextInputType,
  this.fieldCursorColor,
  this.fieldCursorHeight,
  this.fieldSuffixIcon,
  this.fieldPrefixIcon,
  this.fieldSuffixIconColor,
  this.fieldPrefixIconColor
  });

  final TextEditingController fieldController;
  final void Function(String) fieldOnSubmitted;

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
        keyboardType: fieldTextInputType ?? TextInputType.none,
        cursorColor: fieldCursorColor ?? Colors.black,
        cursorHeight: fieldCursorHeight,

        decoration: InputDecoration(
          suffixIcon: fieldSuffixIcon,
          suffixIconColor: fieldSuffixIconColor,
          prefixIcon: fieldPrefixIcon,
          prefixIconColor: fieldPrefixIconColor,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}