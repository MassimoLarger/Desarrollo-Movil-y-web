while(true) {
    let empleado = prompt("Ingrese el nombre del trabajador:");

    if (isFinite(empleado)) {
        alert('Ingrese nombre valido para empleado');
        break;
    }

    var puntuacion = parseFloat(prompt("Ingrese la puntuación del trabajador:"));
    
    if (puntuacion < 0 || puntuacion > 0.8) {
        alert('Ingrese una puntuación válida entre 0 y 0.8');
        break;
    }

    var dinero = 350000;

    if (puntuacion === 0.0) {
        dinero *= puntuacion;
        alert(`El empleado ${empleado} tiene un nivel de rendimiento "Insuficiente" y el dinero que recibirá es ${dinero}`);
    } else if (puntuacion === 0.2) {
        dinero *= puntuacion;
        alert(`El empleado ${empleado} tiene un nivel de rendimiento "Insuficiente" y el dinero que recibirá es ${dinero}`);
    } else if (puntuacion === 0.4) {
        dinero *= puntuacion;
        alert(`El empleado ${empleado} tiene un nivel de rendimiento "Aceptable" y el dinero que recibirá es ${dinero}`);
    } else if (puntuacion === 0.6) {
        dinero *= puntuacion;
        alert(`El empleado ${empleado} tiene un nivel de rendimiento "Meritorio" y el dinero que recibirá es ${dinero}`);
    } else if (puntuacion === 0.8) {
        dinero *= puntuacion;
        alert(`El empleado ${empleado} tiene un nivel de rendimiento "Excelente" y el dinero que recibirá es ${dinero}`);
    }  else {
        alert(`Ingrese un valor valido.`);
        break;
    }
}