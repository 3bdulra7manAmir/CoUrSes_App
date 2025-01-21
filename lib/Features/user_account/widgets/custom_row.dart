import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AccountSections extends StatelessWidget
{
  const AccountSections({super.key, required this.title, required this.imagePath, required this.onRowTap,});

  final String title;
  final String imagePath;
  final void Function() onRowTap;

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: onRowTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:
        [
          Text(title, style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold,),),
          
          //Also It could be an Spacer() here... instead of the MainAxisAlignment.spaceBetween
      
          SvgPicture.asset(imagePath),
        ],
      ),
    );
  }
}