<Screen id="peopleListScreen" title="People List">
  <Map
    id="map1"
    aspectRatio={1}
    geoJson="{
        type: 'FeatureCollection',
        features: [
          {
            type: 'Feature',
            geometry: {
              type: 'Polygon',
              coordinates: [
                [
                  [-122.454, 37.766],
                  [-122.51, 37.764],
                  [-122.51, 37.772],
                  [-122.455, 37.773],
                ],
              ],
            },
          },
        ],
      }"
    geoJsonLayerStyle="{
          'fill-color': '#5b85c9',
          'fill-opacity': 0.75,
      }"
    latitude="{{getLonLat.data.lati[0]}}"
    longitude="{{getLonLat.data.long[0]}}"
    mapStyle="mapbox://styles/mapbox/streets-v12"
    points="[
        { longitude: '{{getLonLat.data.long[0]}}', latitude: '{{getLonLat.data.lati[0]}}' },
      ]"
    zoom={8}
  />
</Screen>
