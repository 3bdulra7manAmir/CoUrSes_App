import 'package:flutter/material.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';


class CustomNumOTPKeyboard extends StatefulWidget
{
  const CustomNumOTPKeyboard({super.key, required this.otpController});

  final TextEditingController otpController;

  @override
  State<CustomNumOTPKeyboard> createState() => CustomNumOTPKeyboardState();
}

class CustomNumOTPKeyboardState extends State<CustomNumOTPKeyboard>
{

  static String text = '';
  
  void _onKeyboardTap(String value)
  {
    setState(() {widget.otpController.text += value;});
    print('Current input: ${widget.otpController.text}');
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
        if (widget.otpController.text.isNotEmpty)
        {
          widget.otpController.text =widget.otpController.text.substring(0, widget.otpController.text.length - 1);
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

