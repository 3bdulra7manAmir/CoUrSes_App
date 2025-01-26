// ignore_for_file: deprecated_member_use

import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/notifictations/widgets/user_status_and_mess_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMessageCard extends StatelessWidget
{
  const CustomMessageCard({super.key, required this.withImageMessage, this.imageItself});

  final bool withImageMessage;
  final Image? imageItself;

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
            const UserStatusAndMessageTime(),

            const SizedBox(height: 5,),

            Text('Congratulations on completing the first lesson, keep up the good work!',),

            SizedBox(height: 10,),

            withImageMessage ?
            ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: Container(
                height: 145.h,
                width: double.infinity,
                color: Color(0xffFFE7EE),
              ),
            )
            : SizedBox.shrink()
          ],
        )
      ),
    );
  }
}



