
import 'package:courses_app/Core/utils/constants/app_colors.dart';
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
            backgroundColor: AppColors().kButtonsBlueColor,
            child: const Text('1', style: TextStyle(color: AppColors.kWhiteColor)),)
          ),
    
        const SizedBox(width: 10,),
    
        SizedBox(
          width: 25.w,
          child: CircleAvatar(
            backgroundColor: AppColors().kButtonsBlueColor,
            child: const Text('2', style: TextStyle(color: AppColors.kWhiteColor)),)
          ),
        const SizedBox(width: 10,),
    
        SizedBox(
          width: 25.w,
          child: CircleAvatar(
            backgroundColor: AppColors().kButtonsBlueColor,
            child: const Text('3', style: TextStyle(color: AppColors.kWhiteColor)),)
          ),
        const SizedBox(width: 10,),
    
        SizedBox(
          width: 25.w,
          child: CircleAvatar(
            backgroundColor: AppColors().kButtonsBlueColor,
            child: const Text('4', style: TextStyle(color: AppColors.kWhiteColor)),)
          ),
        const SizedBox(width: 10,),
        
        SizedBox(
          width: 25.w,
          child: CircleAvatar(
            backgroundColor: AppColors().kButtonsBlueColor,
            child: const Text('5', style: TextStyle(color: AppColors.kWhiteColor)),)
          ),
        const SizedBox(width: 10,),
    
        SizedBox(
          width: 25.w,
          child: CircleAvatar(
            backgroundColor: AppColors().kButtonsBlueColor,
            child: const Text('6', style: TextStyle(color: AppColors.kWhiteColor)),)
          ),
        const SizedBox(width: 10,),
    
        SizedBox(
          width: 25.w,
          child: CircleAvatar(
            backgroundColor: AppColors().kButtonsBlueColor,
            child: const Text('7', style: TextStyle(color: AppColors.kWhiteColor)),)
          ),
        const SizedBox(width: 10,),
      ],
    );
  }
}
