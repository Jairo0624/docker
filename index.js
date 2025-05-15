//Express es un servidor
const express = require('express');

const app = express();

//Importar el archivo de rutas
const port = 3005;

app.get('/', (req, res) => {
    res.send('Hello World!')
});

app.get('get', (req, res) => {
    res.send('Hola')
});

app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
});