import 'package:challenge_sprint_2/components/standard_buttom.dart';
import 'package:challenge_sprint_2/components/standard_page.dart';
import 'package:challenge_sprint_2/modules/cadastro_page/cadastro_page.dart';
import 'package:challenge_sprint_2/modules/lista_ganha/lista_ganha_page.dart';
import 'package:flutter/material.dart';

import '../lista_base/lista_base_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
      bodyWidgets: Center(
        child: Column(
          children: [
            const Text("Bem vindo (Usuário)", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            const SizedBox(height: 130,),

            StandardButtom(
              buttonText: "Listar Licitações da Base", 
              buttonWidth: double.infinity,
              funcOnPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ListaBasePage()));
              }
            ),
            const SizedBox(height: 130,),
            
            StandardButtom(
              buttonText: "Listar Licitações Ganhas", 
              buttonWidth: double.infinity,
              funcOnPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ListaGanhaPage()));
              }
            ),
            const SizedBox(height: 100,),

          Container(
             width: double.infinity,
             height: 40,
             child: OutlinedButton(
               child: Text("Voltar Para Tela de Login", style: TextStyle(fontSize: 18),),
               onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>CadastroPage()));
               },
             ),
           )





          ],
        ),
      )
    );
  }
}
