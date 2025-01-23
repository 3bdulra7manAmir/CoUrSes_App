import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModalBottomSheetCategories extends StatefulWidget
{
  const ModalBottomSheetCategories({super.key,});

  @override
  State<ModalBottomSheetCategories> createState() => ModalBottomSheetCategoriesState();
}

class ModalBottomSheetCategoriesState extends State<ModalBottomSheetCategories>
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
        Text("Categories", style: TextStyle(fontSize: 16.sp)),

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
      label: Text(label, style: TextStyle(color: isSelectedList[index] ? Colors.white : Colors.grey[800],),),
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
    selectedColor: Colors.blue[100],
    backgroundColor: Colors.grey[200],
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
    selectedColor: Colors.blue[100],
    backgroundColor: Colors.grey[200],
  );
}
