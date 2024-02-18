const Place = {
    placeName: "Example Place",
    placeDescription: "This is an example place.",
    placeImage: "https://example.com/image.jpg",
    placeRating: 4.5,
    routeButton: true,
    searchKeywords: ["example", "place", "location"],
    address: "123 Example St, City, Country",
    location: { latitude: 40.7128, longitude: -74.0060 }, // Example coordinates for New York City
    sortOptions: {
      byRegion: true,
      byDistance: false,
      byWalkingOption: true,
      byDrivingOption: false
    }
};


module.exports = {Place};

