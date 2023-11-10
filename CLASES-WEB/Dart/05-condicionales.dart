void main() {
  int edad = 15;

  if (edad >= 18) {
    print("Eres mayor de edad");
  } else {
    print("Eres menor de edad");
  }

  double promedio = 5.5;

  if (promedio >= 5.0) {
    print("Aprobado");
  } else if (promedio <= 5.0 && promedio >= 4.0) {
    print("Recuperatorio");
  } else {
    print("Reprobado");
  }

  print("02-COMPROBACIÓN DE DATOS");
  //Comprobando que la variable valor sea de tipo entero
  var valor1 = 5 is String;
  print(valor1);
  //Comprobando que la variable valor no sea un String
  var valor = 5 is! String;
  print(valor);
}
