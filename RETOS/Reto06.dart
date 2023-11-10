import 'dart:io';

void main() {
  // Solicitar al usuario que ingrese un número
  print('Ingresa un número: ');
  String input = stdin.readLineSync()!;
  
  // Convertir el input a un número entero
  int number = int.parse(input);

  // Verificar si el número es primo
  if (esPrimo(number)) {
    print('$number es un número primo.');
  } else {
    print('$number no es un número primo.');
  }

  // Verificar si el número es par o impar
  if (esPar(number)) {
    print('$number es un número par.');
  } else {
    print('$number es un número impar.');
  }
}

// Función para verificar si un número es primo
bool esPrimo(int numero) {
  if (numero <= 1) {
    return false;
  }
  for (int i = 2; i <= numero ~/ 2; i++) {
    if (numero % i == 0) {
      return false;
    }
  }
  return true;
}

// Función para verificar si un número es par
bool esPar(int numero) {
  return numero % 2 == 0;
}