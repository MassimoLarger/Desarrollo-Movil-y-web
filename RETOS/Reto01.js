let numero = prompt('¿Elige un número?',0);

num = numero % 2;

if (num == 0) {
    alert(`El número ${numero} elegido es par`);
} else {
    alert(`El número ${numero} elegido es impar`);
}