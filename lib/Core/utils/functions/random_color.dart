import 'dart:math';


import 'package:courses_app/Core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

Color getLinkedValue(Color cardBackgroundColor)
{
  switch (cardBackgroundColor)
  {
    case AppColors.kCardColorPinkCardContainer:
      return AppColors.kCardColorPinkLinearLine;
    case AppColors.kCardColorBlueCardContainer:
      return AppColors.kCardColorBlueLinearLine;
    case AppColors.kCardColorGreenCardContainer:
      return AppColors.kCardColorGreenLinearLine;
    default:
      throw ArgumentError('Invalid input. Expected a valid card background color.');
  }
}

// Function to randomly select one of the three values and return it along with its linked value
Map<Color, Color> randomFunction()
{
  final random = Random();

  // Map integers to corresponding Color values
  final colorOptions =
  [
    AppColors.kCardColorPinkCardContainer,
    AppColors.kCardColorBlueCardContainer,
    AppColors.kCardColorGreenCardContainer,
  ];

  // Randomly select a Color from the list
  final randomColor = colorOptions[random.nextInt(colorOptions.length)];

  // Get the linked Color value
  final linkedColor = getLinkedValue(randomColor);

  return {randomColor: linkedColor};
}



// final result = randomFunction();
// print('Random Background Color: ${result.keys.first}, Linked Line Color: ${result.values.first}');
