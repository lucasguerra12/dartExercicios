class CadastroProdutos {
  Map<String, double> produtos;

  CadastroProdutos(this.produtos);

  String produtoMaisCaro() {
    String maisCaro = produtos.keys.first;

    produtos.forEach((produto, preco) {
      if (preco > produtos[maisCaro]!) {
        maisCaro = produto;
      }
    });

    return maisCaro;
  }

  String produtoMaisBarato() {
    String maisBarato = produtos.keys.first;

    produtos.forEach((produto, preco) {
      if (preco < produtos[maisBarato]!) {
        maisBarato = produto;
      }
    });

    return maisBarato;
  }

  double calcularMedia() {
    double soma = 0;

    for (double preco in produtos.values) {
      soma += preco;
    }

    return soma / produtos.length;
  }
}

void main() {
  CadastroProdutos cadastro = CadastroProdutos({
    'Notebook': 3500.0,
    'Mouse': 120.0,
    'Teclado': 250.0,
    'Monitor': 1100.0,
    'Headset': 300.0,
  });

  String caro = cadastro.produtoMaisCaro();
  String barato = cadastro.produtoMaisBarato();

  print('Produto mais caro: $caro');
  print(
    'Preço: R\$ ${cadastro.produtos[caro]!.toStringAsFixed(2)}',
  );

  print('\nProduto mais barato: $barato');
  print(
    'Preço: R\$ ${cadastro.produtos[barato]!.toStringAsFixed(2)}',
  );

  print(
    '\nPreço médio: R\$ ${cadastro.calcularMedia().toStringAsFixed(2)}',
  );
}