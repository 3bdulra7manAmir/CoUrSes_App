import 'package:flutter/material.dart';

class CustomPopularTabListViewBuilder extends StatelessWidget
{
  const CustomPopularTabListViewBuilder({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder
    (
      itemCount: 2,
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemBuilder: (context, index)
      {
        return CustomPopularTab();
      },
    );
  }
}


class CustomPopularTab extends StatelessWidget
{
  const CustomPopularTab({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 100,
      width: 100,
    );
  }
}