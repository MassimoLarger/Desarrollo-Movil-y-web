while (true)
{
let frase = prompt("Escriba una frase:");

if (isFinite(frase)) {
    alert("Por favor, ingrese un frase válida.");
  } else {
    let cortar = frase.split(" ");
    let Contador = cortar.length;
    alert(`Su frase es \"${frase}\" y tiene ${Contador} palabras`);
    break;
    }
}