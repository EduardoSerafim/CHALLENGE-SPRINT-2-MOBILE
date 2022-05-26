import 'package:flutter/material.dart';

class StandardForm extends StatelessWidget {
  final String textLabel;
  StandardForm({required this.textLabel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: TextFormField(
        decoration: InputDecoration(
            label: Text(textLabel),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),),
        ),
      ),
    );
  }
}
