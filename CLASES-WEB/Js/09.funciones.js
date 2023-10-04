console.log('\n#### Funcion básica ####')

function mostrarmensaje() {
    alert('¡Hola a todos!');
}

mostrarmensaje();

console.log('\n#### Variables internas ####')

function varInterna() {
    let mensaje = "Hola, ¡Soy un mensaje de una variable local!"
    alert(mensaje);
}

console.log('\n#### Variables externas ####')

let nombre = 'Victor';

function mostrarnombre() {
    let msj = 'Hola, ' + nombre;
    alert(msj);
}

mostrarnombre();

let institucion = 'Ulagos';

function mostrarinstitucion() {
    let institucion = 'Universidad de los Lagos';
    let texto = 'Yo estudio en la , ' + institucion;
    alert(texto);
}

mostrarinstitucion();
alert(institucion);