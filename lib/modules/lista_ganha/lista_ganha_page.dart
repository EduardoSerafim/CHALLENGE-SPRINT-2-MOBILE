import 'package:challenge_sprint_2/components/standard_card_list.dart';
import 'package:challenge_sprint_2/components/standard_page.dart';
import 'package:challenge_sprint_2/modules/lista_ganha/lista_ganha_controller.dart';
import 'package:flutter/material.dart';

import '../item_base_page/item_base_page.dart';
import '../item_ganho_page/ItemGanhoPage.dart';

class ListaGanhaPage extends StatelessWidget {
  final listaGanhaController = ListaGanhaController();

  @override
  Widget build(BuildContext context) {
    return StandardPage(
        bodyWidgets: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              "Licitações Ganhas",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 50,
                  );
                },
                shrinkWrap: true,
                itemCount: listaGanhaController.licitacaoGanhaList.length,
                itemBuilder: (context, index) {
                  var listaItem = listaGanhaController.licitacaoGanhaList[index];
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => ItemGanhoPage(
                                  id: listaItem.id,
                                  titulo: listaItem.titulo,
                                  edital: listaItem.edital,
                                  orgao: listaItem.orgao,
                                  dataAbertura: listaItem.dataAbertura,
                                  dataFechamento: listaItem.dataFechamento,
                                  processo: listaItem.processo,
                                  valorVenda: listaItem.valorVenda,
                                ))
                            ),
                            
                            
                        );
                      },
                      child: StandardCardList(
                        label1: "Título",
                        content1: listaItem.titulo.toString(),
                        label2: "Orgão/Empresa",
                        content2: listaItem.orgao.toString(),
                        label3: "Valor da venda",
                        content3: 'R\$ ${listaItem.valorVenda}',
                    )
                  );
                }
            )
          ],
        ),
      ),
    );
  }
}
