import 'package:challenge_sprint_2/components/standard_buttom.dart';
import 'package:challenge_sprint_2/components/standard_page.dart';
import 'package:challenge_sprint_2/modules/cadastro_page/cadastro_page.dart';
import 'package:challenge_sprint_2/modules/lista_ganha/lista_ganha_page.dart';
import 'package:flutter/material.dart';

import '../lista_base/lista_base_page.dart';

class ItemGanhoPage extends StatelessWidget {
  num? id;
  String? titulo;
  String? edital;
  String? orgao;
  String? dataAbertura;
  String? dataFechamento;
  String? processo;
  double? valorVenda;

  ItemGanhoPage(
      {this.id,
      this.titulo,
      this.edital,
      this.orgao,
      this.dataAbertura,
      this.dataFechamento,
      this.processo,
      this.valorVenda});

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      bodyWidgets: Column(
        children: [
          const Text(
            "Informações detalhadas",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Identificador",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Text(id.toString(), style: const TextStyle(fontSize: 20)),
                  const SizedBox(height: 15),
                  
                  
                  const Text("Título",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Text(titulo.toString(), style: const TextStyle(fontSize: 20)),
                  const SizedBox(height: 15),
                  
                  
                  const Text("Edital",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Text(edital.toString(), style: const TextStyle(fontSize: 20)),
                  const SizedBox(height: 15),
                  
                  
                  const Text("Órgão/Empresa",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Text(orgao.toString(), style: const TextStyle(fontSize: 20)),
                  const SizedBox(height: 15),
                  
                  
                  const Text("Data de abertura e Fechamento",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Text('${dataAbertura.toString()}  -  ${dataFechamento.toString()}',
                      style: const TextStyle(fontSize: 20)),
                  const SizedBox(height: 15),
                  
                  
                  const Text("Processo",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Text(processo.toString(),
                      style: const TextStyle(fontSize: 20)),
                  const SizedBox(height: 15),

                  
                  const Text("Valor da venda",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Text(valorVenda.toString(),
                      style: const TextStyle(fontSize: 20)),
                  const SizedBox(height: 15)
                ],
              )),
        ],
      ),
    );
  }
}
