const admin = require('../../config/firebase');

// add places 
async function addPlaces(data){
    try{
        const msgRef = admin.firestore().collection('Places');
        await msgRef.add({data, timestamp: admin.firestore.FieldValue.serverTimestamp()});
        return "Place add successfully";
    } catch (err){
        console.error("Error: ", err);
        throw err;
    }
}

// read places
async function readPlaces(){
    const db = admin.firestore();
    const collectionRef = db.collection('Places');
    const snapshot = await collectionRef.get();

    const placeData = [];
    snapshot.forEach(doc => {
        placeData.push(doc.data());
    });

    return JSON.stringify(placeData);
}


module.exports = { addPlaces, readPlaces };



