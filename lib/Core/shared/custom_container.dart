import 'package:courses_app/Core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerBackGround extends StatelessWidget
{
  const CustomContainerBackGround({super.key, this.containerHeightPercent, this.containerWidthPercent,  this.containerDecoration, this.containerChild,});

  final double? containerHeightPercent;
  final double? containerWidthPercent;
  final BoxDecoration? containerDecoration;
  final Widget? containerChild;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: containerHeightPercent ?? KMediaQuery(context).height, //Buttom Container Will Take Full Screen Height
      width: containerWidthPercent ?? KMediaQuery(context).width, //Buttom Container Will Take Full Screen Width
    
      decoration: containerDecoration ?? BoxDecoration(
        color: const Color(0xfff0f0f2),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.r), topRight: Radius.circular(15.r)),
      ),
      child: containerChild,
    );
  }
}