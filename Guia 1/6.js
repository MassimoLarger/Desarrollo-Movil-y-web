let inventario = [];

while (true) {
    
    let nombre = prompt("Ingrese el nombre del objeto (escriba fin para terminar):");

    if (nombre.toLowerCase() === 'fin') {
        break;
    }

    let precio = prompt("Ingrese el precio del objeto:");
    let cantidad = prompt("Ingrese la cantidad a almacenar de este objeto:");

    

    if (isNaN(precio) || isNaN(cantidad) || precio <= 0 || cantidad <= 0) {
        alert("Por favor, ingrese valores válidos para precio y/o cantidad.");
    } else {
        inventario.push({ name: nombre, price: precio, stock: cantidad });
    }
}

let stockCritico = false;

    for (const producto of inventario) {
        if (producto.stock < 1000) {
            alert(`El producto "${producto.name}" tiene un stock crítico de ${producto.stock} unidades.`);
            stockCritico = true;
        }
    }

    if (!stockCritico) {
        alert("El inventario está en buen estado. Todos los productos tienen un stock igual o superior a 1000 unidades.");
    }
console.log(inventario);