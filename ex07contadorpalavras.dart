class ContadorPalavras {
  List<String> palavras;

  ContadorPalavras(this.palavras);

  Map<String, int> contarPalavras() {
    Map<String, int> contagem = {};

    for (String palavra in palavras) {
      if (contagem.containsKey(palavra)) {
        contagem[palavra] = contagem[palavra]! + 1;
      } else {
        contagem[palavra] = 1;
      }
    }

    return contagem;
  }
}

void main() {
  ContadorPalavras contador = ContadorPalavras([
    'dart',
    'java',
    'dart',
    'python',
    'java',
    'dart',
    'javascript',
  ]);

  print('Palavras: ${contador.palavras}');

  print('\nQuantidade de cada palavra:');
  print(contador.contarPalavras());
}