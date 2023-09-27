while (true)
{
let numero = prompt("Ingrese un número entero positivo:");

if (isNaN(numero) || numero <= 0) {
    alert("Por favor, ingrese un número entero positivo válido.");
  } else {
    let sumaPares = 0;

    for (let i = 2; i <= numero; i += 2) {
        sumaPares += i;
      }
      alert(`La suma de los numeros pares desde 1 hasta ${numero} es: ${sumaPares}`);
    }
}