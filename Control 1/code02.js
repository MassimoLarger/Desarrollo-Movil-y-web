while(true) {
    let texto = prompt("Ingrese un texto:");

    if (isFinite(texto)) {
        alert(`Ingrese un texto valido`);
        break
    }
    
    let letra = prompt("Ingrese la letra a ser buscada:");

    if (isFinite(letra)) {
        alert(`Ingrese un texto valido`);
        break
    }

    let contador = 0;
    
    if (texto.includes(letra)) {
        for (var i = 0; i < texto.length; i++) {
            if (texto[i] === letra) {
                contador++;
            }
        }
        alert(`La letra ${letra} está contenida en el texto una cantidad de ${contador} veces.`);
    } else {
        alert(`La letra ${letra} no está contenida en el texto.`);
        break;
    }
}