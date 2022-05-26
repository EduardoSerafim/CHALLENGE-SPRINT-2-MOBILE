class LicitacaoModel {
  final num? id;
  final String? titulo;
  final String? edital;
  final String? orgao;
  final String? dataAbertura;
  final String? dataFechamento;
  final String? processo;
  final double? valorVenda;


  LicitacaoModel({
    this.id,
    this.titulo,
    this.edital,
    this.orgao,
    this.dataAbertura,
    this.dataFechamento,
    this.processo,
    this.valorVenda
  });

}
