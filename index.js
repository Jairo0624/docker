//Express es un servidor
const express = require('express');

const app = express();

//Importar el archivo de rutas
const port = 3005;

app.get('/', (req, res) => {
    res.send('Hello World!')
});

app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
});