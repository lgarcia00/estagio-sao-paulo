import 'dart:io';
import 'dart:math';

void main() {
  print("Informe um número para comprovar se o número inserido está ou não na lista de Fibonacci: ");
  String? input = stdin.readLineSync();

  if (input != null && getNumber(input)) {
    int x = int.parse(input);

    if (getFibonacci(x)) {
      print("O número inserido ($x) está na lista de Fibonacci.");
    } else {
      print("O número inserido ($x) não está na lista de Fibonacci.");
    }
  } else {
    print("Por favor, insira um número válido.");
  }
}

// Função para ver se o número está ou não na sequência
bool getFibonacci(int n) {
  int x1 = 5 * n * n + 4;
  int x2 = 5 * n * n - 4;

  return square(x1) || square(x2);
}

// Função para ver se o número é um quadrado perfeito
bool square(int x) {
  int s = sqrt(x).toInt();
  return (s * s == x);
}

// Função para verificar se o valor digitado é um número
bool getNumber(String s) {
  return int.tryParse(s) != null;
}




// Caso for usar números muito grande, por exemplo: 1000000000000000000000000000000000000, teria que utilizar BigInt, ao ínves de int.
