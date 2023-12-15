const express = require('express');
const app = express();
const port = 3000; // Puedes cambiar el puerto según tus necesidades

app.listen(port, () => {
  console.log(`Servidor corriendo en http://localhost:${port}`);
});

app.get('/', (req, res) => {
    res.send('¡Hola, mundo!');
  });
  
app.get('/saludo/:nombre', (req, res) => {
    const { nombre } = req.params;
    res.send(`¡Hola, ${nombre}!`);
  });

  app.use(express.json()); // Analiza el cuerpo de las solicitudes en formato JSON

app.use((req, res, next) => {
  console.log('Middleware personalizado');
  next();
});

app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Algo salió mal');
});
