import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/account/widgets/custom_row.dart';
import 'package:flutter/material.dart';

class CustomUserDetailsList extends StatelessWidget

{
  const CustomUserDetailsList({super.key,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: KMediaQuery(context).width * 0.05, right: KMediaQuery(context).width * 0.05),
      child: Column(
        children:
        [
          AccountSections(title: 'Favourite', imagePath: AppAssetsPaths().kFlippedBBIMGPath, onRowTap: (){},),
    
          const SizedBox(height: 40,),
    
          AccountSections(title: 'Edit Account', imagePath: AppAssetsPaths().kFlippedBBIMGPath, onRowTap: (){},),
    
          const SizedBox(height: 40,),
    
          AccountSections(title: 'Settings and Privacy', imagePath: AppAssetsPaths().kFlippedBBIMGPath, onRowTap: (){},),
    
          const SizedBox(height: 40,),
    
          AccountSections(title: 'Help', imagePath: AppAssetsPaths().kFlippedBBIMGPath, onRowTap: (){},),
        ],
      ),
    );
  }
}