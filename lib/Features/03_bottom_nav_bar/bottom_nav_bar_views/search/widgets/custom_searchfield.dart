import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/Core/shared/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchFieldForSearchView extends StatelessWidget
{
  const CustomSearchFieldForSearchView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 50.h,
      width: KMediaQuery(context).width * 0.9,
      child: CustomTextfield(
        fieldController: SearchController(),
        fieldOnSubmitted: (string ) {},
        fieldCursorColor: AppColors().kButtonsBlueColor,
        fieldTextInputType: TextInputType.text,
        fieldHintText: 'Find Course',

        fieldPrefixIcon: GestureDetector(
          onTap: (){print('Search Icon Has been Pressed');},
          child: Image.asset(AppIMGs().kSearchPNG,)),
        fieldSuffixIcon: Padding(
          padding: EdgeInsets.only(right: KMediaQuery(context).width * 0.03),
          child: SizedBox(
            width: 70.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:
              [
                GestureDetector(
                  onTap: (){},
                  child: Image.asset(AppIMGs().kClosePNG)),
          
                const SizedBox(width: 10),
          
                GestureDetector(
                  onTap: (){},
                  child: Image.asset(AppIMGs().kFilterPNG)),
              ],
            ),
          ),
        ),

        fieldBoolFilled: true,
        fieldfFillColor: AppColors.kCustomSearchFieldColor,
      ),
    );
  }
}