// ignore_for_file: deprecated_member_use

import 'package:courses_app/Core/shared/custom_button.dart';
import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/app/app_router.dart';
import 'package:courses_app/views/course_preview/widgets/lower_part_column.dart';
import 'package:courses_app/views/course_preview/widgets/upper_part_stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CoursePreviewView extends StatefulWidget
{
  const CoursePreviewView({super.key});

  @override
  State<CoursePreviewView> createState() => _CoursePreviewViewState();
}

class _CoursePreviewViewState extends State<CoursePreviewView>
{
  bool isFavorite = false;
  IconData? favoriteIcon = Icons.star_border;

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body:  SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              UpperPartStack(),
          
              LowerPartColumn(),

              Container(
                height: 100.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r), topRight: Radius.circular(10.r)),
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

                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children:
                    [
                      Expanded(flex: 1,
                        child: Container(
                          height: 49.h,
                          width: KMediaQuery(context).width * 0.05,
                          decoration: BoxDecoration(
                            color: Color(0xffFFEBF0),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                            child: IconButton(onPressed: ()
                            {
                              setState(()
                              {
                                  if (isFavorite)
                                  {
                                    isFavorite = false;
                                    favoriteIcon = Icons.star_border;
                                  }
                                  else
                                  {
                                    isFavorite = true;
                                    favoriteIcon = Icons.star;
                                  }
                              },);
                            }, icon: Icon(favoriteIcon, color: Color(0xffFF6905),)),
                          ),
                        ),
                      ),

                      const SizedBox(width: 20),

                      Expanded(flex: 3,
                        child: CustomBlueButton(buttonWidth: 0.6, buttonText: 'Buy Now', buttonOnPressed: (){print('Buy Now Button has been Pressed'); GoRouter.of(context).push(AppRouter.kPayNowView);})
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}



