void main() {
  // String de Exemplo
  String exemplo = "estagio";

  // Tranformar em um array
  var lista = exemplo.split('');

  // Função para inverter manualmente
  void inverterArray(List<String> array) {
    int inicio = 0;
    int fim = array.length - 1;

    while (inicio < fim) {
      //Trocando os elementos
      String temp = array[inicio];
      array[inicio] = array[fim];
      array[fim] = temp;

      inicio++;
      fim--;
    }
  }

  // Invertando o exemplo
  inverterArray(lista);

  // Transformando o array em string novamente
  String invertido = lista.join();
  exemplo = invertido;

  print("String invertida: $exemplo");
}
