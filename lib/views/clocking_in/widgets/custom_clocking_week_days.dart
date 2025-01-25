import 'package:courses_app/Core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlueWeekDays extends StatelessWidget
{
  const BlueWeekDays({super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
      [
        SizedBox(
          width: 25.w,
          child: CircleAvatar(
            backgroundColor: kButtonsBlueColor,
            child: Text('1', style: TextStyle(color: Colors.white)),)
          ),
    
        SizedBox(width: 10,),
    
        SizedBox(
          width: 25.w,
          child: CircleAvatar(
            backgroundColor: kButtonsBlueColor,
            child: Text('2', style: TextStyle(color: Colors.white)),)
          ),
        SizedBox(width: 10,),
    
        SizedBox(
          width: 25.w,
          child: CircleAvatar(
            backgroundColor: kButtonsBlueColor,
            child: Text('3', style: TextStyle(color: Colors.white)),)
          ),
        SizedBox(width: 10,),
    
        SizedBox(
          width: 25.w,
          child: CircleAvatar(
            backgroundColor: kButtonsBlueColor,
            child: Text('4', style: TextStyle(color: Colors.white)),)
          ),
        SizedBox(width: 10,),
        
        SizedBox(
          width: 25.w,
          child: CircleAvatar(
            backgroundColor: kButtonsBlueColor,
            child: Text('5', style: TextStyle(color: Colors.white)),)
          ),
        SizedBox(width: 10,),
    
        SizedBox(
          width: 25.w,
          child: CircleAvatar(
            backgroundColor: kButtonsBlueColor,
            child: Text('6', style: TextStyle(color: Colors.white)),)
          ),
        SizedBox(width: 10,),
    
        SizedBox(
          width: 25.w,
          child: CircleAvatar(
            backgroundColor: kButtonsBlueColor,
            child: Text('7', style: TextStyle(color: Colors.white)),)
          ),
        SizedBox(width: 10,),
      ],
    );
  }
}
