import 'package:courses_app/views/course_search_filter/bottom_modal_sheet.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: BottomModalSheetView(),
      ),
    );
  }
}