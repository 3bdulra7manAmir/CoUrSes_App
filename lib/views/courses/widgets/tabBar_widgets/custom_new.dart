import 'package:flutter/material.dart';

class CustomNewTabListViewBuilder extends StatelessWidget
{
  const CustomNewTabListViewBuilder({super.key});

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
        return CustomNewTab();
      },
    );
  }
}


class CustomNewTab extends StatelessWidget
{
  const CustomNewTab({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 100,
      width: 100,
    );
  }
}