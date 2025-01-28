import 'package:courses_app/Core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchView extends StatelessWidget
{
  const SearchView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Padding(
              padding:  EdgeInsets.only(left: KMediaQuery(context).width * 0.05, top: 35.h),
              child: SvgPicture.asset('assets/images/svg/Eye.svg'),
            ),
          ],
        ),
      ),
    );
  }
}