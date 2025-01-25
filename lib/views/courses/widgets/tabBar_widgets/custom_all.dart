// ignore_for_file: deprecated_member_use

import 'package:courses_app/Core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAllTabListViewBuilder extends StatelessWidget
{
  const CustomAllTabListViewBuilder({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder
    (
      itemCount: 2,
      shrinkWrap: true,
      itemBuilder: (context, index)
      {
        return CustomAllTabCard();
      },
    );
  }
}


class CustomAllTabCard extends StatelessWidget
{
  const CustomAllTabCard({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: KMediaQuery(context).width * 0.9,
      height: 95.h,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow:
        [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
    );
    
  }
}