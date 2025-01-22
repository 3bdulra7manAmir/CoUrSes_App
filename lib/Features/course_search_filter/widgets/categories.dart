import 'package:courses_app/Core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModalBottomSheetCategories extends StatelessWidget
{
  const ModalBottomSheetCategories({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children:
      [
        Text('Categories', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp,),),
    
        const SizedBox(height: 20,),
    
        CustomSelectionButton(
          buttonWidth: 0.27,
          buttonHeight: 0.04 ,
          buttonText: 'Design',
          buttonOnPressed: ()
          {
            // setState(()
            // {
            //   if(backgroundColor == Colors.white || textColor == Color(0xff3d5cff))
            //   {
            //     backgroundColor = Color(0xff3d5cff);
            //     textColor = Colors.white;
            //   }
            //   else
            //   {
            //     backgroundColor = Colors.white;
            //     textColor = Color(0xff3d5cff);
            //   }
              
            // });
          }
        ),
      ],
    );
  }
}