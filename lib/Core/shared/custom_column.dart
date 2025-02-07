
import 'package:courses_app/Core/utils/constants/app_responsive.dart';
import 'package:flutter/material.dart';

class AfContainerBody extends StatelessWidget
{

  const AfContainerBody({super.key, this.leftPercentage, this.topPercentage, required this.positionedChild,});

  final double? leftPercentage;
  final double? topPercentage;
  final Widget positionedChild;

  @override
  Widget build(BuildContext context)
  {
    return Positioned(
      top: KMediaQuery(context).height * (topPercentage ?? 0),
      left: KMediaQuery(context).width * (leftPercentage ?? 0),
      child: positionedChild,
    );
  }
}