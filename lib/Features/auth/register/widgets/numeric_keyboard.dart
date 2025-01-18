import 'package:flutter/material.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';


class CustomNumericKeyboard extends StatefulWidget
{
  const CustomNumericKeyboard({super.key});

  @override
  State<CustomNumericKeyboard> createState() => CustomNumericKeyboardState();
}

class CustomNumericKeyboardState extends State<CustomNumericKeyboard>
{

  String text = '';
  void _onKeyboardTap(String value)
  {
    setState(() {text += value;});
    print('Current input: $text');
  }

  @override
  Widget build(BuildContext context)
  {
    return NumericKeyboard(
      
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      onKeyboardTap: _onKeyboardTap,
      textColor: Colors.black,

      rightButtonFn: () {setState(() {text = text.substring(0, text.length - 1);});},
      rightIcon: Icon(Icons.backspace, color: Colors.black,),

      leftButtonFn: () {print('left button clicked');},
      leftIcon: Icon(Icons.check, color: Colors.black,),
    );
  }
}

