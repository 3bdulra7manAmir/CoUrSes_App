import 'package:flutter/material.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';



class CustomNumericKeyboard extends StatefulWidget
{
  const CustomNumericKeyboard({super.key, required this.controller});

  final TextEditingController controller;

  @override
  State<CustomNumericKeyboard> createState() => CustomNumericKeyboardState();
}

class CustomNumericKeyboardState extends State<CustomNumericKeyboard>
{

  static String text = '';
  
  void _onKeyboardTap(String value) {
    setState(() {widget.controller.text += value;});
    print('Current input: ${widget.controller.text}');
  }

  @override
  Widget build(BuildContext context)
  {
    return NumericKeyboard(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      onKeyboardTap: _onKeyboardTap,
      textColor: Colors.black,

      rightButtonFn: () {setState(()
      {if (widget.controller.text.isNotEmpty)
      {widget.controller.text =widget.controller.text.substring(0, widget.controller.text.length - 1);}
      });
      },
      rightIcon: Icon(Icons.backspace, color: Colors.black,),

      leftButtonFn: () {print('left button clicked');},
      leftIcon: Icon(Icons.check, color: Colors.black,),
    );
  }
}

