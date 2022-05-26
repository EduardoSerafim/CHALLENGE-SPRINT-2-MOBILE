import 'package:challenge_sprint_2/modules/cadastro_page/cadastro_page.dart';
import 'package:challenge_sprint_2/themes/app_theme.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget{
@override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: CadastroPage(),
      theme: lightTheme,
    );
  }
}
  