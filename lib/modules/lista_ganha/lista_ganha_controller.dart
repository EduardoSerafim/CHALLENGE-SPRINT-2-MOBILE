import 'package:challenge_sprint_2/model/licitacao_model.dart';
import 'package:flutter/material.dart';

class ListaGanhaController extends ChangeNotifier {
  List<LicitacaoModel> licitacaoGanhaList = [
    LicitacaoModel(
        id: 123456,
        titulo: "AQ DE CAMINHÕES PARA OBRAS",
        edital: "CEL 031/22",
        orgao: "SEDUC",
        dataAbertura: '01/02/2022',
        dataFechamento: '30/03/2022',
        processo: "0171117.000067/2022",
        valorVenda: 300000.00
      )
  ];

}
