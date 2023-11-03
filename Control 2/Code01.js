function generarContraseña() {
    let longitud = document.getElementById('lenght').value;

    if (isNaN(longitud) || longitud > 20 || longitud < 8) {
        alert(`Ingrese un número entre 8 y 20`)
    } else {

        var mayusculas = document.getElementById("Mayus").checked;
        var minusculas = document.getElementById("Minus").checked;
        var numeros = document.getElementById("Num").checked;
        var cEspeciales = document.getElementById("Esp").checked;

        if (mayusculas === false && minusculas === false && numeros === false && cEspeciales === false) {
            alert(`Clickee al menos una casilla`)
        } else {

            var caracteres = "";
            var contraseña = "";
    
            if (mayusculas) caracteres += "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            if (minusculas) caracteres += "abcdefghijklmnopqrstuvwxyz";
            if (numeros) caracteres += "0123456789";
            if (cEspeciales) caracteres += "!@#$%^&*()_-+=<>?/";
    
            for (var i = 0; i < longitud; i++) {
                var indice_aleatorio = Math.floor(Math.random() * caracteres.length);
                contraseña += caracteres.charAt(indice_aleatorio);
            }

            let resultadosDiv = document.getElementById('resultados');
            resultadosDiv.innerHTML = '<p>Contraseña Generada: ' + contraseña + '</p>';

        }
    }
}