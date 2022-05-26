import 'package:flutter/material.dart';

class StandardButtom extends StatelessWidget {
  final Function()? funcOnPressed;
  final String buttonText;
  final double buttonWidth;
 
  StandardButtom(
      {this.funcOnPressed,
      required this.buttonText,
      required this.buttonWidth}
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: buttonWidth,
        child: ElevatedButton(
            onPressed: funcOnPressed,
            child: Text(
              buttonText,
              style: TextStyle(fontSize: 18),
            )));
  }
}
