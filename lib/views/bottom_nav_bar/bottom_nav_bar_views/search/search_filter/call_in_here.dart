import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/search/search_filter/filter_bms_view.dart';
import 'package:flutter/material.dart';

class BMSFilterView extends StatelessWidget
{
  const BMSFilterView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: BMSFilterItself(),
      ),
    );
  }
}