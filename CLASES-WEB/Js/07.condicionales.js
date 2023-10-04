console.log('#### Sentencias if/else ####')

let year = prompt('¿En que año se creo JavaScript?','');

if (year = 1995) {
    alert('¡Correcto, en el año 1995!')
} else {
    alert('¡Respuesta Incorrecta!')
}

console.log('#### Sentencias elif ####')

let edad = prompt('¿A que edad puedes tener licencia?','');

if (edad <= 18) {
    alert('¡Correcto, a partir de los 18 años!');
} else if (edad = 17) {
    alert('¡Correcto, pero no puede manejar solo un menor de 17 años!');
} else {
    alert('¡Respuesta Incorrecta! No puede ser menos a 17 años')
}