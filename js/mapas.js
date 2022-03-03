    function getLocation() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(showPosition);
        } else {
            x.innerHTML = "Geolocation is not supported by this browser.";
        }
    }
    function showPosition(position) {
        myPosition = position;

        var geocoder = L.esri.Geocoding.geocodeService();
        map = L.map('map').setView([41.3496909, 2.1076248], 25);
        var popup = L.popup();
        var marker = L.marker([position.coords.latitude, position.coords.longitude], { draggable: false, autoPan: false }).addTo(map);
        /*x.innerHTML = "Latitude: " + position.coords.latitude + 
        "<br>Longitude: " + position.coords.longitude;*/
        var tiles = L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
            attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
            maxZoom: 18,
            id: 'mapbox/streets-v11',
            tileSize: 512,
            zoomOffset: -1,
            accessToken: 'pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw'
        }).addTo(map);
        cargaContenido("process/posiciones.php","GET",positionDirection)
    }

    function positionDirection(e) {
        if (peticion_http.readyState == READY_STATE_COMPLETE) {
            if (peticion_http.status == 200) {
                var datos = JSON.parse(peticion_http.responseText);
                var geocoder = L.esri.Geocoding.geocodeService();
                markerPosition = [];
                removeRouting = false;
                for (let i = 0; i < datos.length; i++) {
                        geocoder.geocode().text(datos[i].direccion).run(function (error, response) {
                        markerPosition.push(L.marker(response.results[0].latlng).on("click",getPositionDirection).addTo(map));
                    });
                }
            }
        }
    }
    function getPositionDirection(e){
        if (removeRouting != false) {
            map.removeControl(routingControl);
        }else{
            removeRouting = true;
        }
        routingControl = L.Routing.control({
            waypoints: [
                L.latLng(myPosition.coords.latitude, myPosition.coords.longitude),
                L.latLng(e.latlng.lat,e.latlng.lng)
            ],
            routeWhileDragging: false,
            draggableWaypoints: false,
            fitSelectedRoutes: false
        }).addTo(map);
    }