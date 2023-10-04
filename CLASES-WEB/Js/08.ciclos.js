console.log('#### While ####')
let i = 0

while (i <= 5) {
    console.log(i);
    i++;
}

console.log('\n#### Do-While ####')

let aux = 0;
do {
    console.log(aux);
    aux++;
}

while (aux <= 3);

console.log('\n#### For ####')

for (let x = 1; x <= 3; x++) {
    console.log(x);
}

console.log('\n#### Omisiones en For ####')

let j = 0;

for (; j <= 7; j++) {
    console.log(j);
}

for (; j <= 7;) {
    console.log(j++);
}

console.log('\n#### Uso de break ####')

let suma = 0;

while (true) {
    let valor = +prompt("Ingrese u número, porfavor");
    if (!valor) break;
    suma += valor;
}

alert(`La suma es de: ${suma}`);

console.log('\n#### Uso del continue ####')

for (let i = 0; i < 10; i++) {
    if ((i % 2) = 0) continue;
    alert(i);
}