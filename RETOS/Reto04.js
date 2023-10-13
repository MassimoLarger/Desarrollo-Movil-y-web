function calculadoraIMC() {
    let nombre = document.getElementById('name').value;
    let peso = parseInt(document.getElementById('weight').value);
    let altura = parseInt(document.getElementById('height').value);
    let activitadF = document.getElementById('activity').value;

    if (isFinite(nombre) || isNaN(peso) || isNaN(altura) || peso < 0 || altura < 0) {
      alert('Por favor, ingrese números válidos.');
    } else {
    
    let IMC = peso / ((altura/100)**2);
    var Clasificacion = "";
    let GEnergetico = (peso * activitadF);
    var Estado = "";
    
    if (IMC < 18.5 ) {
      var Clasificacion = "Bajo peso";
    } else if (IMC > 18.5 && IMC < 24.9) {
      var Clasificacion = "Peso normal";
    } else if (IMC > 18.5 && IMC < 29.9) {
      var Clasificacion = "Sobrepeso";
    } else {
       var Clasificacion = "Obesidad";
    }

    if (Clasificacion === "Bajo peso" || Clasificacion === "Sobrepeso" || Clasificacion === "Obesidad") {
       var Estado = "Necesita Atención Especializada";
    } else {
      var Estado = "Estado Nutricional Adecuado";
    }

    let resultadosDiv = document.getElementById('resultados');
    resultadosDiv.innerHTML = '<p><h1>Resultados para ' + nombre + ' </h1></p>'+
                             '<p>IMC: ' + IMC.toFixed(2) + ' </p>' +
                              '<p>Clasificación: ' + Clasificacion + ' </p>' +
                              '<p>Gasto Energético Diario: ' + GEnergetico.toFixed(2) + ' kcal </p>' +
                              '<p>Estado Nutricional: ' + Estado + ' </p>';
  }
}