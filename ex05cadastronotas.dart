class CadastroNotas {
  Map<String, double> alunos;

  CadastroNotas(this.alunos);

  List<String> alunosAprovados() {
    List<String> aprovados = [];

    alunos.forEach((nome, media) {
      if (media >= 6.0) {
        aprovados.add(nome);
      }
    });

    return aprovados;
  }
}

void main() {
  CadastroNotas cadastro = CadastroNotas({
    'Lucas': 8.5,
    'Gabriel': 5.0,
    'Maria': 7.5,
    'João': 4.5,
    'Ana': 9.0,
  });

  print('Alunos e médias:');
  print(cadastro.alunos);

  print('\nAlunos aprovados:');
  print(cadastro.alunosAprovados());
}