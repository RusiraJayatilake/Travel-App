const express = require('express');
const http = require('http');
const appRoutes = require('./api/routes/routes');

const PORT = 7000;
const app = express();
const server = http.createServer(app);

app.use('/api/', appRoutes);

server.listen(PORT, () => {
    console.log(`http://localhost:${PORT}/`)
});
