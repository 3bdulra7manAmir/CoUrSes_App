import 'package:courses_app/Core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BMSCategories extends StatefulWidget
{
  const BMSCategories({super.key,});

  @override
  State<BMSCategories> createState() => BMSCategoriesState();
}

class BMSCategoriesState extends State<BMSCategories>
{
  // List to manage selected state of each chip
  List<bool> isSelectedList = [false, false, false, false, false, false];

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text("Categories", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),

        const SizedBox(height: 10),

        Wrap(
          spacing: 10,
          runSpacing: 10,
          children:
          [
            buildCategoryChip("Design", 0),
            buildCategoryChip("Painting", 1),
            buildCategoryChip("Coding", 2),
            buildCategoryChip("Music", 3),
            buildCategoryChip("Visual identity", 4),
            buildCategoryChip("Mathematics", 5),
          ],
        ),
        
      ],
    );
  }

  Widget buildCategoryChip(String label, int index)
  {
    return FilterChip(
      label: Text(label, style: TextStyle(color: isSelectedList[index] ? AppColors.kWhiteColor : Colors.grey[800],),),
      selected: isSelectedList[index],
      onSelected: (bool selected)
      {
        setState((){isSelectedList[index] = selected;});
      },
      selectedColor: Color(0xff3d5cff),
      backgroundColor: Colors.grey[200],
    );
  }
}

Widget buildCategoryChip(String label,)
{
  return FilterChip(
    label: Text(label),
    onSelected: (bool selected)
    {
      // Handle chip selection
    },
    selectedColor: AppColors.kBlueColor100,
    backgroundColor: AppColors.kGreyColor200,
  );
}

Widget buildDurationChip(String label, bool isSelected)
{
  return FilterChip(
    label: Text(label),
    selected: isSelected,
    onSelected: (bool selected)
    {
      // Handle chip selection
    },
    selectedColor: AppColors.kBlueColor100,
    backgroundColor: AppColors.kGreyColor200,
  );
}
