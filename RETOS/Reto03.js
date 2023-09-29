function calcularPropina() {
    let montoBoleta = parseInt(document.getElementById('monto').value);
    let porcentajePropina = parseInt(document.getElementById('porcentaje').value);
  
    if (isNaN(montoBoleta) || isNaN(porcentajePropina)) {
      alert('Por favor, ingrese números válidos.');
    }
  
    let propina = (montoBoleta * porcentajePropina) / 100;
    let totalPagar = montoBoleta + propina;
  
    let resultadosDiv = document.getElementById('resultados');
    resultadosDiv.innerHTML = '<p>Monto de la propina: ' + propina.toFixed(2) + ' CLP</p>' +
                              '<p>Total a pagar (con propina): ' + totalPagar.toFixed(2) + ' CLP</p>';
  }