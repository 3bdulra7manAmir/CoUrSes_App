import 'package:courses_app/Core/constants.dart';
import 'package:flutter/material.dart';

class AfterContainerWidget extends StatelessWidget
{
  final double leftPercentage;
  final double topPercentage;
  final List<Widget> widgetsList;

  const AfterContainerWidget({super.key, required this.leftPercentage, required this.topPercentage, required this.widgetsList,});

  @override
  Widget build(BuildContext context)
  {
    return Positioned(
      left: KMediaQuery(context).width * leftPercentage,
      top: KMediaQuery(context).height * topPercentage,

      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: widgetsList,
      ),
    );
  }
}