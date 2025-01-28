// ignore_for_file: deprecated_member_use

import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/notifictations/widgets/notifictation_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNotifictations extends StatelessWidget
{
  const CustomNotifictations({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.r),
        boxShadow:
        [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            const UserNotifictationContainer(),

            
          ],
        )
      ),
    );
  }
}



