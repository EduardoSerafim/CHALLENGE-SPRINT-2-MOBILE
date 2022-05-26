import 'package:challenge_sprint_2/components/standard_card_list.dart';
import 'package:challenge_sprint_2/components/standard_page.dart';
import 'package:challenge_sprint_2/modules/lista_base/lista_base_controller.dart';
import 'package:flutter/material.dart';

import '../item_base_page/item_base_page.dart';

class ListaBasePage extends StatelessWidget {
  final listaBaseController = ListaBaseController();

  @override
  Widget build(BuildContext context) {
    return StandardPage(
        bodyWidgets: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              "Licitações da Base de Dados",
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
                itemCount: listaBaseController.licitacaoBaseList.length,
                itemBuilder: (context, index) {
                  var listaItem = listaBaseController.licitacaoBaseList[index];
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => ItemBasePage(
                                  id: listaItem.id,
                                  titulo: listaItem.titulo,
                                  edital: listaItem.edital,
                                  orgao: listaItem.orgao,
                                  dataAbertura: listaItem.dataAbertura,
                                  processo: listaItem.processo,
                                ))
                            ),
                            
                            
                        );
                      },
                      child: StandardCardList(
                        label1: "Título",
                        content1: listaItem.titulo.toString(),
                        label2: "Orgão/Empresa",
                        content2: listaItem.orgao.toString(),
                        label3: "Data de abertura",
                        content3: listaItem.dataAbertura.toString(),
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
