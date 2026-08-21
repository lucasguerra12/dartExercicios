class Estoque {
  Map<String, int> produtos = {};

  void adicionarProduto(String nome, int quantidade) {
    if (produtos.containsKey(nome)) {
      produtos[nome] = produtos[nome]! + quantidade;
    } else {
      produtos[nome] = quantidade;
    }
  }

  void removerQuantidade(String nome, int quantidade) {
    if (!produtos.containsKey(nome)) {
      print('Produto não encontrado.');
      return;
    }

    int quantidadeAtual = produtos[nome]!;

    if (quantidade > quantidadeAtual) {
      print('Quantidade insuficiente em estoque.');
      return;
    }

    produtos[nome] = quantidadeAtual - quantidade;
  }

  int consultarEstoque(String nome) {
    return produtos[nome] ?? 0;
  }

  List<String> produtosSemEstoque() {
    List<String> semEstoque = [];

    produtos.forEach((nome, quantidade) {
      if (quantidade == 0) {
        semEstoque.add(nome);
      }
    });

    return semEstoque;
  }
}

void main() {
  Estoque estoque = Estoque();

  estoque.adicionarProduto('Notebook', 5);
  estoque.adicionarProduto('Mouse', 10);
  estoque.adicionarProduto('Teclado', 3);
  estoque.adicionarProduto('Monitor', 2);

  print('Estoque inicial:');
  print(estoque.produtos);

  estoque.removerQuantidade('Teclado', 3);
  estoque.removerQuantidade('Notebook', 2);

  print('\nEstoque depois das remoções:');
  print(estoque.produtos);

  print(
    '\nQuantidade de notebooks: ${estoque.consultarEstoque('Notebook')}',
  );

  print('\nProdutos sem estoque:');
  print(estoque.produtosSemEstoque());
}