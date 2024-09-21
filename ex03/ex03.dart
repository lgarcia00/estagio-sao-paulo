import 'dart:convert';
import 'dart:io';

void main() async {
  // arquivo json
  final valores = File('C:/progs/teste_estagio-saopaulo/ex03/valores.json');
  final json = await valores.readAsString();

  // obtendo valores do json
  List<dynamic> valorDiario = jsonDecode(json);

  // Removendo os dias sem faturamento
  List<double> faturamentoValores = valorDiario
      .where((dia) => dia['valor'] > 0)
      .map<double>((dia) => dia['valor'])
      .toList();

  // Calculo do menor valor
  double menorValor = faturamentoValores.reduce((a, b) => a < b ? a : b);

  // Calculo do maior valor
  double maiorValor = faturamentoValores.reduce((a, b) => a > b ? a : b);

  // Calculo da media
  double somaValor = faturamentoValores.reduce((a, b) => a + b);
  double mediaValor = somaValor / faturamentoValores.length;

  // Calculo de quantos dias foi maior
  int acimaMedia =
      faturamentoValores.where((valor) => valor > mediaValor).length;

  print('Menor valor de faturamento: R\$ $menorValor');
  print('Maior valor de faturamento: R\$ $maiorValor');
  print('Número de dias com faturamento acima da média: $acimaMedia');
}
