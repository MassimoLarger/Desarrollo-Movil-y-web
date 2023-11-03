while(true) {
    let cantidad = parseFloat(prompt("Ingrese la cantidad a facturar:"));

    if (isNaN(cantidad) || cantidad < 0) {
        alert("Ingrese un valor valido para la cantidad");
        break;
    }

    var iva = prompt("Ingrese el iva a aplicar [1-100] (si lo ingresa vacio devolvera 19%):");

    if (isNaN(iva) || iva < 0) {
        alert("Ingrese un iva valido");
        break;
    } else if (!iva) {
        parseFloat(iva = 19);
        alert("Iva configurado como 19%");
        var valorTotal = cantidad + (cantidad *iva / 100);
        alert(`El valor total es ${valorTotal}`);
    } else {
        alert(`El iva ingresado es ${iva}\%`);
        parseFloat(iva);
        var valorTotal = cantidad + (cantidad *iva / 100);
        alert(`El valor total es ${valorTotal}`);
    }
}