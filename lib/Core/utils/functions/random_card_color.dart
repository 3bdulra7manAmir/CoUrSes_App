// Function to return a linked value based on the input
import 'dart:math';

import 'package:courses_app/Core/constants.dart';
import 'package:flutter/material.dart';

Color getLinkedValue(Color cardBackgroundColor)
{
  switch (cardBackgroundColor)
  {
    case kCardColorPinkCardContainer:
      return kCardColorPinkLinearLine;
    case kCardColorBlueCardContainer:
      return kCardColorBlueLinearLine;
    case kCardColorGreenCardContainer:
      return kCardColorGreenLinearLine;
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
    kCardColorPinkCardContainer,
    kCardColorBlueCardContainer,
    kCardColorGreenCardContainer,
  ];

  // Randomly select a Color from the list
  final randomColor = colorOptions[random.nextInt(colorOptions.length)];

  // Get the linked Color value
  final linkedColor = getLinkedValue(randomColor);

  return {randomColor: linkedColor};
}



// final result = randomFunction();
// print('Random Background Color: ${result.keys.first}, Linked Line Color: ${result.values.first}');
