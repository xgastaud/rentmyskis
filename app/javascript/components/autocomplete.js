// app/javascript/components/autocomplete.js
function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var productAddress = document.querySelector(".autocomplete");
    // var productAddress = document.getElementById('address');

    if (productAddress) {
      var autocomplete = new google.maps.places.Autocomplete(productAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(productAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
