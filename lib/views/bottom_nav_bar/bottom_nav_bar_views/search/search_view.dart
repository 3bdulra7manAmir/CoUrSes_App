import 'package:courses_app/Core/shared/custom_listviewbuilder.dart';
import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/Core/utils/styles.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/courses/widgets/tabBar_widgets/custom_all_tab.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/search/widgets/custom_cat_scroll_list.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/search/widgets/custom_searchfield.dart';
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Padding(
                padding:  EdgeInsets.only(left: KMediaQuery(context).width * 0.05, top: 25.h),
                child: SvgPicture.asset(AppAssetsPaths().kBBIMGPath),
              ),
          
              Padding(padding: EdgeInsets.only(top: 25.h, left: KMediaQuery(context).width * 0.05, right: KMediaQuery(context).width * 0.05, bottom: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  const CustomSearchFieldForSearchView(),

                  const SizedBox(height: 20,),

                  const CategorySelector(),
          
                  const SizedBox(height: 20,),
          
                  Text("Results", style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),),
          
                  const SizedBox(height: 10,),
          
                  const SeparatorListViewBuilder(
                    returnedWidget: CustomAllTabCard(),
                    separatorBuilderWidget: SizedBox(height: 10,),
                    returneditemCount: 4
                  ),
                ],
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}