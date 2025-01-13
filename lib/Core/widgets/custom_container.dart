import 'package:courses_app/Core/constants.dart';
import 'package:flutter/material.dart';

class CustomContainerBackGround extends StatelessWidget
{
  const CustomContainerBackGround({super.key, required this.containerHeightPercent, this.containerWidthPercent,  this.boxDecoration, this.containerChild,});

  final double containerHeightPercent;
  final double? containerWidthPercent;
  final BoxDecoration? boxDecoration;
  final Widget? containerChild;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: KMediaQuery(context).height * containerHeightPercent,
      width: containerWidthPercent ?? KMediaQuery(context).width,
    
      decoration: boxDecoration ?? BoxDecoration(
        color: Color(0xfff0f0f2),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      ),
      child: containerChild,
    );
  }
}