$(document).ready(function() {
  var lat = 51.5033640;
  var long = -0.1276250;
  var map = new GMaps({
    el: '#map',
    lat: lat,
    lng: long,
    infoWindow: {
      content: '<p>There you are!</p>'
    }
  });
});

function performGeolocation(lat, lng) {
  var latitude;
  var longitude;
  var testing_env = $('#map').data().testEnv;
  if (testing_env === false) {
      GMaps.geolocate({
          success: function (position) {
              latitude = position.coords.latitude;
              longitude = position.coords.longitude;
              map.setCenter(latitude, longitude);
          },
          error: function (error) {
              alert('Geolocation failed: ' + error.message);
          },
          not_supported: function () {
              alert('Your browser does not support geolocation');
          }
      });
  } else {
      latitude = lat || 57.690123;
      longitude = lng || 11.950632;
      map.setCenter(latitude, longitude);
  }
}
