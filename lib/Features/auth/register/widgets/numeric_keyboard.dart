import 'package:flutter/material.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';



class CustomNumericKeyboard extends StatefulWidget
{
  const CustomNumericKeyboard({super.key, required this.numericController});

  final TextEditingController numericController;

  @override
  State<CustomNumericKeyboard> createState() => CustomNumericKeyboardState();
}

class CustomNumericKeyboardState extends State<CustomNumericKeyboard>
{

  static String text = '';
  
  void _onKeyboardTap(String value)
  {
    setState(() {widget.numericController.text += value;});
    print('Current input: ${widget.numericController.text}');
  }

  @override
  Widget build(BuildContext context)
  {
    return NumericKeyboard(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      onKeyboardTap: _onKeyboardTap,
      textColor: Colors.black,

      rightButtonFn: ()
      {setState(()
      {
        if (widget.numericController.text.isNotEmpty)
        {
          widget.numericController.text =widget.numericController.text.substring(0, widget.numericController.text.length - 1);
        }
      }
        );
      },
      rightIcon: Icon(Icons.backspace, color: Colors.black,),

      leftButtonFn: () {print('left button clicked');},
      leftIcon: Icon(Icons.check, color: Colors.black,),
    );
  }
}

