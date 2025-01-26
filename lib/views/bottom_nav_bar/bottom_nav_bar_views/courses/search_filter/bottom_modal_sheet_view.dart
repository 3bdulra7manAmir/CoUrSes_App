import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/courses/search_filter/widgets/modal_sheet_categories.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/courses/search_filter/widgets/modal_sheet_header.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/courses/search_filter/widgets/modal_sheet_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomModalSheetView extends StatefulWidget
{
  const BottomModalSheetView({super.key});

  @override
  State<BottomModalSheetView> createState() => BottomModalSheetViewState();

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
      builder: (BuildContext context) => BottomModalSheetView(),
    );
  }
}

class BottomModalSheetViewState extends State<BottomModalSheetView>
{
  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.only(top: KMediaQuery(context).height * 0.01, left: KMediaQuery(context).width * 0.05,),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min, // Ensures the bottom sheet takes only required space
        children:
        [
          ModalBottomSheetHeader(),

          SizedBox(height: 30),

          ModalBottomSheetCategories(),

          SizedBox(height: 30),

          ModalBottomSheetPrice(),
        ],
      ),
    );
  }
}




