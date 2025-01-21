import 'package:courses_app/Core/constants.dart';
import 'package:courses_app/Features/user_account/widgets/custom_row.dart';
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
          AccountSections(title: 'Favourite', imagePath: 'assets/images/svg/EyeFlipped.svg', onRowTap: (){},),
    
          const SizedBox(height: 40,),
    
          AccountSections(title: 'Edit Account', imagePath: 'assets/images/svg/EyeFlipped.svg', onRowTap: (){},),
    
          const SizedBox(height: 40,),
    
          AccountSections(title: 'Settings and Privacy', imagePath: 'assets/images/svg/EyeFlipped.svg', onRowTap: (){},),
    
          const SizedBox(height: 40,),
    
          AccountSections(title: 'Help', imagePath: 'assets/images/svg/EyeFlipped.svg', onRowTap: (){},),
        ],
      ),
    );
  }
}