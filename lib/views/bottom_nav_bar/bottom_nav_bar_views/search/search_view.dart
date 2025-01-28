import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchView extends StatelessWidget
{
  const SearchView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            SvgPicture.asset('/assets/images/svg/Eye.svg'),
          ],
        ),
      ),
    );
  }
}