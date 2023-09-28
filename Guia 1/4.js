while (true) {
    let numeros = prompt("Ingrese una serie de números separados por comas:");
    let separados = numeros.split(",").map(Number);
    
    if (separados.some(isNaN)) {
        alert("Por favor, ingrese un número válido.");
      } else {
        let max = Math.max(...separados);
        alert(`El número ingresado mas grande es ${max}`);
        break;
    }
}