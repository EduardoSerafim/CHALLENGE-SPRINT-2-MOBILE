import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(

  brightness: Brightness.light,
  primarySwatch: Colors.deepPurple,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.deepPurple, onPrimary: Colors.white
    )
  )


);
