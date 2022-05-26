import 'package:challenge_sprint_2/components/standard_buttom.dart';
import 'package:challenge_sprint_2/components/standard_form.dart';
import 'package:challenge_sprint_2/components/standard_page.dart';
import 'package:challenge_sprint_2/modules/home_page/home_page.dart';
import 'package:flutter/material.dart';

class CadastroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
        bodyWidgets: Center(
      child: Column(
        children: [
          Image.asset('assets/images/scanialogo.png'),
          Row(
            children: const [
              Expanded(
                  child: Divider(
                color: Colors.black,
              ))
            ],
          ),
          const SizedBox(height: 15),
          const Text(
            'Sistema de licitações',
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 20),
          StandardForm(textLabel: "Usuário"),
          const SizedBox(height: 40),
          StandardForm(textLabel: "Senha"),
          const SizedBox(height: 30),
          StandardButtom(
            buttonText: "Login",
            buttonWidth: 250,
            funcOnPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
            },
          )
        ],
      ),
    ));
  }
}
