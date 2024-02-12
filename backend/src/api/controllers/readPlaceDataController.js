const { readPlaces } = require('../services/placeManagementService');

const readPlaceData = async (req, res) => {
    try{
        const placeData = await readPlaces();
        res.json(JSON.stringify(placeData));

    } catch (err){
        res.status(500).json({ error: 'Internal server error' });
    }
}

module.exports = { readPlaceData };