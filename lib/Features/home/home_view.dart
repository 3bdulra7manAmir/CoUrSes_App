import 'package:courses_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget
{
  const HomeView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: Center(child: Text("Man! This is Home View", style: Styles.textStyle18,),),
      ),
    );
  }
}