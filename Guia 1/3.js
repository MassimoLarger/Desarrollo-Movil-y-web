while (true) {
let contraseña = prompt("Ingrese una contraseña:");
let especial = /[!@#\$%\^&\*\(\)_\+{}\[\]:;<>,\.\?~\\\-]/;
let mayuscula = /[A-Z]/;
let numero = /\d/;
if (contraseña.length < 8) {
    alert("Su contraseña debe tener al menos 8 caracteres de longitud.");
    } else if (!mayuscula.test(contraseña)) {
        alert("Su contraseña debe contener al menos una letra mayúscula.");
    } else if (!numero.test(contraseña)) {
        alert("Su contraseña debe contener al menos un número.");
    } else if (!especial.test(contraseña)) {
        alert("Su contraseña debe  incluir al menos un carácter especial.");
    } else {
        alert(`\"La contraseña es válida\"`);
        break;
        }
}




