let edad = 29;
let sueldo = 1200000;
const PI = 3.14;

const x = 1000000;
const n_grande = 1e6;
const n_pequeño = 1e-6;

console.log(n_grande);
console.log(n_pequeño);

const bigint = 123456789123456789123456789;
console.log(bigint);

console.log(edad/0);
console.log(Infinity);

console.log("2" / 2);

console.log("Hola" / 2);
console.log("Hola" = 4);

console.log('##### Strings #####');
let nombre = "Massimo";
let ciudad = "Osorno";
let capital = "Puerto Montt";
let string1 = "Hola, ¿Cómo estás?";
let string2 = "¡Buenas tardes!";
let frase = `Este es un saludo: ${string1}`;

console.log(ciudad + "y" + capital + "pertenecen a la region de los lagos.");

console.log(capital + "es la capital de la region de los lagos.");

console.log("Mi nombre es " .concat(nombre, "y vivo en " , ciudad));

console.log("#### Booleans ####");
let V = true;
let F = false;

if (V) {
    console.log("Es verdadero");
} else {
    console.log("Es falso");
}

console.log("#### Null ####");
let nuevo_numero = null;
console.log(nuevo_numero);

console.log("#### Indefinido ####");
let institucion;
console.log(institucion);

console.log("#### Objetos ####");
let user = new Object();
let user1 = {}

let usuario = {
    name : "Mateo",
    age : 30,
    city : "Osorno",
    "correo electronico": "mateo@gmail.com"
};

usuario.provincia = "Provincia de Osorno";
usuario.estado = true;
usuario.pais = "Chile";
usuario.genero = "Masculino";

console.log(usuario["correo electronico"]);

delete usuario.estado;

console.log(usuario);

console.log("#### Tipo de Dato ####");
console.log(typeof nombre);