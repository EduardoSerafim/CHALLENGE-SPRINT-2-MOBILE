import 'package:challenge_sprint_2/model/licitacao_model.dart';
import 'package:flutter/material.dart';

class ListaBaseController extends ChangeNotifier {
  List<LicitacaoModel> licitacaoBaseList = [
    LicitacaoModel(
        id: 225042,
        titulo: "AQ DE CAMINHÕES PARA TRANSPORTE...",
        edital: "CEL 001/22",
        orgao: "SP Obras",
        dataAbertura: '24/03/2022',
        processo: "0171117.000067/2022"),
    LicitacaoModel(
        id: 123654,
        titulo: "AQ. DE CAMINHÔES TANQUES",
        edital: "CEL 741/22",
        orgao: "Petrobrás",
        dataAbertura: "10/05/2022",
        processo: "741258.000069/2022"),
  ];

}
