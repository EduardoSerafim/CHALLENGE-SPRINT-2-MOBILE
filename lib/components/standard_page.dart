import 'package:flutter/material.dart';

class StandardPage extends StatelessWidget {
  final Widget bodyWidgets;

  StandardPage({required this.bodyWidgets});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 60),
        child: SingleChildScrollView(
          child: bodyWidgets,
        ),
      ),
    );
  }
}
