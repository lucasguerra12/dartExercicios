class ProdutoPares {
  int calcular(int n) {
    int produto = 1;

    for (int i = 1; i <= n; i++) {
      if (i % 2 == 0) {
        produto *= i;
      }
    }

    return produto;
  }
}

void main() {
  ProdutoPares produtoPares = ProdutoPares();

  int resultado = produtoPares.calcular(8);

  print('Produto dos números pares: $resultado');
}