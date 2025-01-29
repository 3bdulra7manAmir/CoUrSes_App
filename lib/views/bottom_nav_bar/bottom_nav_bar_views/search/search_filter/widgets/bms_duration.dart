import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BmsDuration extends StatefulWidget
{
  const BmsDuration({super.key,});

  @override
  State<BmsDuration> createState() => BmsDurationState();
}

class BmsDurationState extends State<BmsDuration>
{
  // List to manage selected state of each chip
  List<bool> isSelectedList = [false, false, false, false, false];

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text("Duration", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),

        const SizedBox(height: 10),

        Wrap(
          spacing: 10,
          runSpacing: 10,
          children:
          [
            buildCategoryChip("3-8 Hours", 0),
            buildCategoryChip("8-14 Hours", 1),
            buildCategoryChip("14-20 Hours", 2),
            buildCategoryChip("20-24 Hours", 3),
            buildCategoryChip("24-30 Hours", 4),
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
