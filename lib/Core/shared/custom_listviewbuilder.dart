import 'package:flutter/material.dart';

class MessagesListViewBuilder extends StatelessWidget
{
  const MessagesListViewBuilder({super.key, required this.returnedWidget, required this.separatorBuilderWidget, required this.returneditemCount});

  final Widget returnedWidget;
  final Widget separatorBuilderWidget;
  final int returneditemCount;

  @override
  Widget build(BuildContext context)
  {
    return ListView.separated(
      itemCount: returneditemCount,
      shrinkWrap: true,
      itemBuilder: (context, index)
      {
        return returnedWidget;
      },
      separatorBuilder: (context, index)
      {
        return separatorBuilderWidget;
      }
    );
  }
}