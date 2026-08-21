class Numeros {
  List<int> numeros;

  Numeros(this.numeros);

  int maiorNumero() {
    int maior = numeros[0];

    for (int numero in numeros) {
      if (numero > maior) {
        maior = numero;
      }
    }

    return maior;
  }

  int menorNumero() {
    int menor = numeros[0];

    for (int numero in numeros) {
      if (numero < menor) {
        menor = numero;
      }
    }

    return menor;
  }

  double calcularMedia() {
    int soma = 0;

    for (int numero in numeros) {
      soma += numero;
    }

    return soma / numeros.length;
  }
}

void main() {
  Numeros numeros = Numeros([
    10,
    25,
    8,
    42,
    15,
    3,
    30,
    18,
    50,
    7,
  ]);

  print('Lista: ${numeros.numeros}');
  print('Maior número: ${numeros.maiorNumero()}');
  print('Menor número: ${numeros.menorNumero()}');
  print('Média: ${numeros.calcularMedia().toStringAsFixed(2)}');
}