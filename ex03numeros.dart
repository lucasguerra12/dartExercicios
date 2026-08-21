class Numeros {
  List<int> numeros;

  Numeros(this.numeros);

  int somarPares() {
    int soma = 0;

    for (int numero in numeros) {
      if (numero % 2 == 0) {
        soma += numero;
      }
    }

    return soma;
  }

  int somarImpares() {
    int soma = 0;

    for (int numero in numeros) {
      if (numero % 2 != 0) {
        soma += numero;
      }
    }

    return soma;
  }
}

void main() {
  Numeros numeros = Numeros([1, 2, 3, 4, 5]);

  print('Números: ${numeros.numeros}');
  print('Soma dos pares: ${numeros.somarPares()}');
  print('Soma dos ímpares: ${numeros.somarImpares()}');
}