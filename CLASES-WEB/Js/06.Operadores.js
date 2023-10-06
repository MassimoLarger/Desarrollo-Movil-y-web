console.log("#### Operados y Operadores ####");

let z = 1;
z = -z;

console.log(`El valor de z es ${z}`);

let x = 1 , y = 3;

console.log(y - x);

console.log("#### Concatenación con el binario + ####");

console.log('1' + 2);
console.log(2 + '1');
console.log(1 + 1 + '2');

console.log("#### Suma unitaria y Suma binaria ####");

let manzana = 2;
console.log(+manzana);

console.log(+true);
console.log(+"");
console.log(+"4");

console.log("#### Operadores de resto ####");

console.log(6 % 2);
console.log(8 % 3);

console.log("#### Operadores exponenciales ####");

console.log(2 ** 2);
console.log(2 ** 3);
console.log(2 ** (1/2));

console.log("#### Asignaciones en cadenadas ####");

let a,b,c;
a = b = c = 5 + 5;

console.log(a);
console.log(b);
console.log(c);

console.log("#### Modificación/Asignación variables ####");

let n = 1;
n = n + 9

console.log(n);

n += 5;
console.log("El valor actualizado de n: ", n);

n += 2;
console.log("El valor actualizado de n: ", n);

console.log("#### Incremento ####");

let contador = 1;
contador++;
console.log(contador);

console.log("#### Decremento ####");

contador--;
console.log(contador);