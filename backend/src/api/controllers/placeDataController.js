const Place = require('../models/Place');
const firebaseAdmin = require('../../config/firebase');

const createPlaceData = async (req, res) => {
    try{
        const docRef = await firebaseAdmin.firestore().collection("Places").add(Place);
        // Respond with the ID of the newly created document
        res.status(201).json({ message: "Place data added successfully", placeId: docRef.id });
    } catch (err){
        console.error(err);
        res.status(500).json({ error: "Failed to create place data" });
    }
};

const readPlaceData = async (req, res) => {
    try{
        // const placeId = req.params.placeId;
        const docSnapshot = await firebaseAdmin.firestore().collection("Places").get();

        // if (!docSnapshot.exists) {
        //     return res.status(404).json({ error: "Place not found" });
        // }

        const allPlaceData = [];
        docSnapshot.forEach(doc => {
            allPlaceData.push(doc.data());
        });

        // const placeData = docSnapshot.data();
        res.status(200).json(allPlaceData);

    } catch (err){
        console.error(err);
        res.status(500).json({ error: "Failed to read place data" });
    }
};

module.exports = { createPlaceData, readPlaceData };