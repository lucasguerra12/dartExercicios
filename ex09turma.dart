class Turma {
  List<String> alunos;
  Map<String, double> notas;

  Turma(this.alunos, this.notas);

  List<String> alunosAprovados() {
    List<String> aprovados = [];

    for (String aluno in alunos) {
      if (notas[aluno] != null && notas[aluno]! >= 6.0) {
        aprovados.add(aluno);
      }
    }

    return aprovados;
  }
}

void main() {
  Turma turma = Turma(
    [
      'Lucas',
      'Gabriel',
      'Maria',
      'João',
      'Ana',
    ],
    {
      'Lucas': 8.0,
      'Gabriel': 5.5,
      'Maria': 9.0,
      'João': 4.0,
      'Ana': 6.5,
    },
  );

  print('Alunos: ${turma.alunos}');
  print('Notas: ${turma.notas}');

  print('\nAlunos aprovados:');
  print(turma.alunosAprovados());
}