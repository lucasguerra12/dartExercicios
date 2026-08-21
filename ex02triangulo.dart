class Triangulo {
  double base;
  double altura;

  Triangulo(this.base, this.altura);

  double calcularArea() {
    return (base * altura) / 2;
  }
}

void main() {
  Triangulo triangulo = Triangulo(10.0, 5.0);

  print('Base: ${triangulo.base}');
  print('Altura: ${triangulo.altura}');
  print('Área: ${triangulo.calcularArea()}');
}