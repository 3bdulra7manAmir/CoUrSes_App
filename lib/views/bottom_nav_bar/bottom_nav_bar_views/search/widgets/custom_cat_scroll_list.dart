// ignore_for_file: deprecated_member_use

import 'package:courses_app/Core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategorySelector extends StatefulWidget
{
  const CategorySelector({super.key});

  @override
  CategorySelectorState createState() => CategorySelectorState();
}

class CategorySelectorState extends State<CategorySelector>
{
  int selectedIndex = -1; // -1 means no item is selected
  List<String> categories = ["Visual Identity", "Painting", "Coding", "Writing"];

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 40.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index)
        {
          return CategoryItem(
            title: categories[index],
            isSelected: selectedIndex == index,
            onTap: () {setState(() {selectedIndex = selectedIndex == index ? -1 : index;});},
          );
        },
      ),
    );
  }
}

class CategoryItem extends StatelessWidget
{
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryItem({super.key, required this.title, required this.isSelected,required this.onTap,});

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.kCardColorBlueLinearLine : AppColors.kGreyColor200,
          borderRadius: BorderRadius.circular(20.r),
        ),

        child: Text(title, style: TextStyle(color: isSelected ? AppColors.kWhiteColor : AppColors.kGreyColor800, fontWeight: FontWeight.w500,),),
      ),
    );
  }
}
