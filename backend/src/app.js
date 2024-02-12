const express = require('express');
const http = require('http');
const appRoutes = require('./api/routes/routes');
const { addPlaces } = require('./api/services/placeManagementService');
const placeObj = require('../src/api/models/Place');

const PORT = 7000;
const app = express();
const server = http.createServer(app);

app.use('/api/', appRoutes);

// sample place data object

addPlaces(placeObj).then((res) => {
    console.log(res);
}).catch((err) => {
    console.error(err);
});


server.listen(PORT, () => {
    console.log(`http://localhost:${PORT}/`)
});
