var preguntas;
var indicePreguntaActual = 0;
var puntuacion = 0;
var vidas = 5; // Ahora se establece en 5 vidas
let nombre;
let timeLeft = 15;  // Tiempo inicial
let timerInterval;
let timerElement = document.getElementById('timer');
var juegoFinalizado = false;


function cargarPreguntas() {
  let categoria= localStorage.getItem('categoria');
  // Construir la URL basada en la categoría seleccionada
  let url = `${categoria}.json`;

  // Utilizar fetch para cargar el archivo JSON
  fetch(url)
      .then(response => response.json())
      .then(data => {
          preguntas = shuffleArray(data);
          iniciarJuego();  // Llamamos a iniciarJuego después de cargar las preguntas
      })
      .catch(error => {
          console.error('Error al cargar el archivo JSON:', error);
      });
}

function cargarPregunta(indicePregunta) {
  // Lógica para cargar la pregunta y opciones en el HTML
  var preguntaActual = preguntas[indicePregunta];
  document.getElementById('question').innerText = preguntaActual.pregunta;

  // Aleatorizar el orden de las opciones
  var opcionesAleatorias = shuffleArray([...preguntaActual.opciones]);
  var opcionesHTML = '';
  respuestaCorrectaActual = preguntaActual.respuesta_correcta; // Guardar la respuesta correcta actual
  opcionesAleatorias.forEach(function (opcion, index) {
    // Asigna clases específicas a los botones (por ejemplo, button1, button2, etc.)
    var buttonClass = 'button' + (index + 1);
    opcionesHTML += `
      <li>
        <button class="${buttonClass}" onclick="responderTrivia(this)" data-es-correcta="${respuestaCorrectaActual.includes(opcion)}">
        ${opcion}</button>
      </li>`;
  });
  document.getElementById('options').innerHTML = opcionesHTML;
  
  // Aquí inicia el código del temporizador
  if (timerInterval) {
      clearInterval(timerInterval);
      timeLeft = 15;  // Reiniciar el tiempo a 10 segundos
  }
    timerElement.textContent = timeLeft;
    timerInterval = setInterval(updateTimer, 1000);
}

function updateTimer() {
  if (juegoFinalizado) {
    clearInterval(timerInterval);
    return;
  }

  timeLeft -= 1;
  timerElement.textContent = timeLeft;

  if (timeLeft <= 0) {
    clearInterval(timerInterval);
    responderTrivia(false);  // Tratar la respuesta como incorrecta si se agota el tiempo
  }
}

// Función para aleatorizar un arreglo utilizando el algoritmo de Fisher-Yates
function shuffleArray(array) {
  for (let i = array.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [array[i], array[j]] = [array[j], array[i]];
  }
  return array;
}

function iniciarJuego() {
  // Movemos la obtención del nombre aquí
  nombre = document.getElementById('name').value;
  if (isFinite(nombre)) {
    alert('Por favor, ingrese un nombre válido.');
  } else {
  document.getElementById('form-container').style.display = 'none';
  document.getElementById('trivia-container').style.display = 'block';

  cargarPregunta(indicePreguntaActual);
  }
}

function responderTrivia(botonSeleccionado) {
  // Si se ha seleccionado un botón, remover la clase 'seleccionado' de todos los botones
  if (botonSeleccionado) {
    var botones = document.querySelectorAll('#options button');
    botones.forEach(function (boton) {
      boton.classList.remove('seleccionado');
    });

    // Agregar la clase 'seleccionado' al botón seleccionado
    botonSeleccionado.classList.add('seleccionado');
  }

  // Si no se seleccionó ningún botón (temporizador agotado), considerar la respuesta como incorrecta
  var esCorrecta = botonSeleccionado ? botonSeleccionado.getAttribute('data-es-correcta') === 'true' : false;

  // Si el tiempo se agotó, considerar la respuesta como incorrecta
  if (timeLeft <= 0) {
    esCorrecta = false;
  }

  // Obtener la respuesta correcta guardada previamente
  var respuestaCorrecta = respuestaCorrectaActual[0]; // Solo necesitamos la primera respuesta correcta

  var opcionSeleccionada = botonSeleccionado ? botonSeleccionado.innerText : "Tiempo agotado";

  var respuestaContainer = document.getElementById('respuesta');
  var respuestaTexto = document.createElement('p');
  respuestaTexto.className = 'respuesta-texto';
  respuestaTexto.innerText = esCorrecta ? '¡Respuesta correcta!' : 'Respuesta incorrecta. La respuesta correcta es: ' + respuestaCorrecta;

  respuestaContainer.appendChild(respuestaTexto);

  // Agregar la clase oculto después de un tiempo específico (por ejemplo, 3 segundos)
  setTimeout(function () {
    respuestaTexto.classList.add('oculto');
    // Eliminar el elemento de la respuesta después de ocultarlo
    setTimeout(function () {
      respuestaContainer.removeChild(respuestaTexto);
    }, 500);
  }, 1000);

  // Actualizar la puntuación y vidas
  if (esCorrecta) {
    puntuacion += 100;
  } else {
    vidas--;
  }

  actualizarInfoJuego();

  // Cargar la siguiente pregunta después de un breve retraso
  setTimeout(function () {
    // Verificar si quedan más preguntas
    if (indicePreguntaActual < preguntas.length - 1) {
      // Cargar la siguiente pregunta
      indicePreguntaActual++;
      cargarPregunta(indicePreguntaActual);
    } else {
      // Fin del juego
      mostrarResultadoFinal();
    }
  }, 1000);  // Esperar 1 segundo (1000 milisegundos) antes de cargar la siguiente pregunta

  // Detener el temporizador cuando el jugador responda
  clearInterval(timerInterval);
}

function actualizarInfoJuego() {
  // Actualizar la puntuación y vidas en pantalla
  document.getElementById('puntuacion').innerText = puntuacion;
  document.getElementById('vidas').innerText = vidas;

  // Verificar si el jugador ha perdido todas las vidas
  if (vidas <= 0) {
    mostrarResultadoFinal();
  }
}

function mostrarResultadoFinal() {
  juegoFinalizado = true;  // Establecer que el juego ha finalizado
  clearInterval(timerInterval); // Añade esta línea para detener el temporizador

  // Ocultar contenedor de información de juego
  document.getElementById('info-container').style.display = 'none';

  // Ocultar contenedor de juego
  document.getElementById('trivia-container').style.display = 'none';

  // Mostrar contenedor de fin de juego
  document.getElementById('fin-juego').style.display = 'block';

  // Mostrar información del jugador
  document.getElementById('nombreResultado').innerText = nombre;
  document.getElementById('puntuacionResultado').innerText = puntuacion;
  document.getElementById('vidasResultado').innerText = vidas;

  // Guardar la puntuación del jugador
  guardarPuntuacion(nombre, puntuacion, vidas);

  // Mostrar las puntuaciones más altas
  mostrarPuntuaciones();
  
}
  
// Guardar una nueva puntuación en el almacenamiento local
function guardarPuntuacion(nombre, puntuacion, vidas) {
  const puntuaciones = obtenerPuntuacionesAlmacenadas();
  puntuaciones.push({ nombre, puntuacion, vidas });
  // Ordenar las puntuaciones de mayor a menor
  puntuaciones.sort((a, b) => b.puntuacion - a.puntuacion);
  // Guardar solo las 10 puntuaciones más altas
  const puntuacionesTop10 = puntuaciones.slice(0, 10);
  localStorage.setItem('puntuaciones', JSON.stringify(puntuacionesTop10));
}

// Mostrar las puntuaciones más altas en el marcador
function mostrarPuntuaciones() {
  const puntuacionesTop10 = obtenerPuntuacionesAlmacenadas();
  // Mostrar las puntuaciones en tu marcador HTML (debes agregar un marcador en tu HTML)
  const marcadorElement = document.getElementById('marcador');
  marcadorElement.innerHTML = ''; // Limpiar el contenido anterior
  puntuacionesTop10.forEach((puntuacion, index) => {
    const item = document.createElement('li');
    item.innerText = `${index + 1}. ${puntuacion.nombre}: ${puntuacion.puntuacion}`;
    marcadorElement.appendChild(item);
  })
}