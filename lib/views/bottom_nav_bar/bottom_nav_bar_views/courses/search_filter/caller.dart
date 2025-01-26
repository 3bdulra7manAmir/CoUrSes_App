import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/courses/search_filter/bottom_modal_sheet_view.dart';
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