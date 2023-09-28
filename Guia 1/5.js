while (true) {
    let estatura = prompt("Ingrese su estatura (en metros):");
    let peso = prompt("Ingrese su peso:");
    
    if (isNaN(estatura) || isNaN(peso) || estatura <= 0 || peso <= 0) {
        alert("Por favor, ingrese valores válidos para estatura y peso.");
     } else {
        let IMC = (peso / (estatura * estatura));
        let categoria = "";
            if (IMC < 18.5) {
                categoria = "Bajo Peso";
            } else if (IMC < 24.9) {
                categoria = "Peso Normal";
            } else {
                categoria = "Sobrepeso";
            }
        alert(`Su IMC es de \"${IMC}\" y su catagoria es \"${categoria}\"`);
        break;
    }
}