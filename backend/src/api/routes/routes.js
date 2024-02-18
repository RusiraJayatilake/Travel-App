const express = require('express');
const routes = express.Router();
const { createPlaceData, readPlaceData } = require('../controllers/placeDataController');

routes.get('/', (req, res) => {
    res.json('App');
});

routes.use('/read', createPlaceData);
routes.use('/data', readPlaceData);

module.exports = routes;