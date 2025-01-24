import 'package:courses_app/Core/constants.dart';
import 'package:courses_app/Core/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchField extends StatelessWidget
{
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 50.h,
      width: KMediaQuery(context).width * 0.9,
      child: CustomTextfield(
        fieldController: SearchController(),
        fieldOnSubmitted: (string ) {},
        fieldCursorColor: kButtonsBlueColor,
        fieldTextInputType: TextInputType.text,
        fieldHintText: 'Find Course',

        fieldPrefixIcon: GestureDetector(
          onTap: (){print('Search Icon Has been Pressed');},
          child: Image.asset('assets/images/png/search.png',)),
        fieldSuffixIcon: GestureDetector(
          onTap: (){print('Filtter Icon Has been Pressed');},
          child: Image.asset('assets/images/png/filter.png')),

        fieldBoolFilled: true,
        fieldfFillColor: Color(0xffF4F3FD),
      ),
    );
  }
}