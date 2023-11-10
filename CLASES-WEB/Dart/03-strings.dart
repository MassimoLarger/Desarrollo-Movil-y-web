//GUIA DE STRINGS EN DART
//Docente: Victor Saldivia Vera - Institución: Universidad de Los Lagos

void main() {
  //Concatenación
  String nombre = "Ramiro";
  String apellido = "Diaz";
  String nombreCompleto = nombre + " " + apellido;
  print("Nombre completo: $nombreCompleto");

  //Obteniendo Longitud de Cadena
  String mensaje = "¡Hola a Todos!";
  int longitud = mensaje.length;
  print("La longitud del mensaje es: $longitud");

  //Buscando una palabra en un texto
  String parrafo = "Dart es un lenguaje de programación moderno.";
  String palabraBuscada = "dart";
  bool contienePalabra = parrafo.contains(palabraBuscada);
  print("¿El párrafo contiene la palabra '$palabraBuscada'? $contienePalabra");
}
