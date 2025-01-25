import 'package:courses_app/views/courses/widgets/tabBar_widgets/custom_all_tab.dart';
import 'package:flutter/material.dart';

class CustomAllTabListViewBuilder extends StatelessWidget
{
  const CustomAllTabListViewBuilder({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ListView.separated
    (
      itemCount: 6,
      shrinkWrap: true,
      itemBuilder: (context, index)
      {
        return CustomAllTabCard();
      },
      separatorBuilder: (context, index)
      {
        return SizedBox(height: 15,);
      },
    );

  }
}