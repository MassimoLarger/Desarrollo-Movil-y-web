//GUIA DE OPERADORES Y OPERACIONES EN DART
//Docente: Victor Saldivia Vera - Institución: Universidad de Los Lagos

main() {
  //Declarando e inicializando variables de tipo entero
  int a = 20;
  int b = 5;
  int c = 4;
  int d = 20;

  //Declarando e inicializando variables de tipo decimal
  double e = 20.55;
  double f = 5.90;
  double g = 9.81234;

  //Operaciones comunes
  print("01-OPERADORES ARITMETICOS");
  print("La suma entre a + b es: ${a + b}\n");

  print("La resta entre c - d es: ${c - d}\n");
  print("El producto entre e * f es: ${e * f}\n");
  print("La división entre a/d es: ${a / d}\n");
  print("La división entera entre e/f es: ${e ~/ f}\n");
  print("El residuo entre b/c es: ${b % c}\n");

  //double e = NumberFormat("###.0#", "en_US");
  //print(e.format(12.345));

  /*Usando toStringAsFixed() para obtener la representación de cadena 
  más cercana con exactamente N dígitos después del punto decimal.*/
  double num1 = double.parse((g).toStringAsFixed(5));
  print("Valor de g con solamente con 2 decimales: $num1\n\n");
}
