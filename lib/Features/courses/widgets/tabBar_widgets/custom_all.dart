import 'package:flutter/material.dart';

class CustomAllTabListViewBuilder extends StatelessWidget
{
  const CustomAllTabListViewBuilder({super.key});

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
        return CustomAllTab();
      },
    );
  }
}


class CustomAllTab extends StatelessWidget
{
  const CustomAllTab({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 100,
      width: 100,
    );
  }
}