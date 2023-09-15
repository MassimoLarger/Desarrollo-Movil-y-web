let nota1 = prompt('¿Escribe tu primera nota:?',0);
let nota2 = prompt('¿Escribe tu segunda nota:?',0);
let nota3 = prompt('¿Escribe tu tercera nota:?',0);

n1 = nota1 / 100 * 40
n2 = nota2 / 100 * 30
n2 = nota3 / 100 * 30

promedio = n1 + n2 + n3

if (promedio < 3.95) {
    alert(`Su promedio es de${promedio} ha reprobado la asignatura`);
} else if (3.95 < promedio < 4.94) {
    alert(`Su promedio es de ${promedio} usted va a examen`);
} else {
    alert(`Su promedio es de ${promedio} usted se exime de la asignatura`);
}