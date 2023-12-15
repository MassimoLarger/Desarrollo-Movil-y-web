while (true) {
    let nombre = prompt("Ingrese un nickname:");
    const mayuscula = /[A-Z]/;
    const numero = /\d/;
    if (nombre.length < 6) {
        alert("Su nickname debe tener al menos 6 caracteres de longitud.");
        } else if (!mayuscula.test(nombre) || !numero.test(nombre)) {
            alert("Su nickname debe contener al menos una letra mayúscula y un número.");
            break;
        } else if (!mayuscula.test(nombre.charAt(0))) {
            alert("Su nickname debe contener una mayuscula al comienzo.");
            break;
        } else if (!numero.test(nombre.charAt(nombre.length - 1))) {
            alert("Su nickname debe contener tener un número al final.");
            break;
        } else {
            alert(`\"El nickname ingresado ${nombre} es valido\"`);
            }
    }