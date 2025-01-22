import 'package:courses_app/Core/constants.dart';
import 'package:courses_app/Features/course_search_filter/widgets/categories.dart';
import 'package:courses_app/Features/course_search_filter/widgets/header.dart';
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min, // Ensures the bottom sheet takes only required space
        children:
        [
          const ModalBottomSheetHeader(),

          SizedBox(height: 30.h),

          const ModalBottomSheetCategories(),
        ],
      ),
    );
  }
}




