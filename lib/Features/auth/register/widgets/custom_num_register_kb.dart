import 'package:flutter/material.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';


class CustomNumRegisterKeyboard extends StatefulWidget
{
  const CustomNumRegisterKeyboard({super.key, required this.phoneRegisterController});

  final TextEditingController phoneRegisterController;
  
  @override
  State<CustomNumRegisterKeyboard> createState() => CustomNumRegisterKeyboardState();
}

class CustomNumRegisterKeyboardState extends State<CustomNumRegisterKeyboard>
{

  static String text = '';
  
  void _onKeyboardTap(String value)
  {
    setState(() {widget.phoneRegisterController.text += value;});
    print('Current input: ${widget.phoneRegisterController.text}');
  }

  //TO PREVENT Memory leak //Tharwat Samy...
  @override
  void dispose()
  {
    widget.phoneRegisterController.dispose();
    super.dispose();
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
        if (widget.phoneRegisterController.text.isNotEmpty)
        {
          widget.phoneRegisterController.text =widget.phoneRegisterController.text.substring(0, widget.phoneRegisterController.text.length - 1);
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

