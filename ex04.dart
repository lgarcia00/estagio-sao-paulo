void main (){

  // Valores
  double sp = 67836.43;
  double rj = 36678.66;
  double mg = 29229.88;
  double es = 27165.48;
  double outros = 19849.53;

  // Total
  double total = sp + rj + mg + es + outros;

  // Função para calcular a porcentagem
  double porcentagem(double valor, double total){
    return (valor / total) * 100;
  }

  // Calculos
  double spPorcentagem = porcentagem(sp, total);
  double rjPorcentagem = porcentagem(rj, total);
  double mgPorcentagem = porcentagem(mg, total);
  double esPorcentagem = porcentagem(es, total);
  double outrosPorcentagem = porcentagem(outros, total);

  // Resultados
  print("Percentual de representação do valor total da distribuidora por estado:");
  print("Estado SP: ${spPorcentagem.toStringAsFixed(2)}%");
  print("Estado RJ: ${rjPorcentagem.toStringAsFixed(2)}%");
  print("Estado MG: ${mgPorcentagem.toStringAsFixed(2)}%");
  print("Estado ES: ${esPorcentagem.toStringAsFixed(2)}%");
  print("Outros Estados: ${outrosPorcentagem.toStringAsFixed(2)}%");
  

}