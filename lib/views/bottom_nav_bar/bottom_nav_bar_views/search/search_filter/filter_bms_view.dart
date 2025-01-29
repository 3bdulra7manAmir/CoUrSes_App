import 'package:courses_app/Core/shared/custom_button.dart';
import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/search/search_filter/widgets/bms_categories.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/search/search_filter/widgets/bms_duration.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/search/search_filter/widgets/bms_header.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/search/search_filter/widgets/bms_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BMSFilterItself extends StatefulWidget
{
  const BMSFilterItself({super.key});

  @override
  State<BMSFilterItself> createState() => BMSFilterItselfState();

  /// Function to show the BottomModalSheetView
  static void show(BuildContext context)
  {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.r),
        ),
      ),
      builder: (BuildContext context) => BMSFilterItself(),
    );
  }
}

class BMSFilterItselfState extends State<BMSFilterItself>
{
  @override
  Widget build(BuildContext context)
  {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: KMediaQuery(context).height * 0.01, left: KMediaQuery(context).width * 0.05, right: KMediaQuery(context).width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisSize: MainAxisSize.min,
          children:
          [
            const BMSHeader(),
      
            const SizedBox(height: 30),
      
            const BMSCategories(),
      
            const SizedBox(height: 60),
      
            Text("Price", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),),
      
            const SizedBox(height: 10),
      
            Padding(
              padding: EdgeInsets.only(left: KMediaQuery(context).width * 0.02, right: KMediaQuery(context).width * 0.05,),
              child: BMSPrice(),
            ),
      
            const SizedBox(height: 60,),
      
            const BmsDuration(),

            const SizedBox(height: 40),

            Row(
              children:
              [
                Expanded(
                  flex: 2,
                  child: CustomReversedButton(
                    buttonWidth: 0.3,
                    buttonText: 'Clear',
                    outerBorderColor: BorderSide(color: kButtonsBlueColor),
                    buttonOnPressed: (){print('Clear Button has been pressed');}
                  ),
                ),

                SizedBox(width: 10,),
                
                Expanded(
                  flex: 3,
                  child: CustomBlueButton(
                    buttonWidth: 0.7,
                    buttonText: 'Apply Filter',
                    buttonOnPressed: (){print('Apply Filter Button has been pressed');}
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}




