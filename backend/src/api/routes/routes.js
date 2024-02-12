const express = require('express');
const routes = express.Router();
const placeDataController = require('../controllers/readPlaceDataController');

routes.get('/data', placeDataController.readPlaceData);

module.exports = routes;