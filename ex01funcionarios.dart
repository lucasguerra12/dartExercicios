class Funcionario {
  String nome;
  double salario;

  Funcionario(this.nome, this.salario);

  void reajustarSalario() {
    salario = salario * 1.25;
  }
}

void main() {
  Funcionario funcionario = Funcionario('Lucas', 2000.0);

  print('Funcionário: ${funcionario.nome}');
  print('Salário antes do reajuste: R\$ ${funcionario.salario.toStringAsFixed(2)}');

  funcionario.reajustarSalario();

  print('Salário após reajuste: R\$ ${funcionario.salario.toStringAsFixed(2)}');
}