function createRoute(start,end,waypoints){
	var directionsService = new google.maps.DirectionsService; 
	var waypoints = [] //insert waypoints into here 

	directionsService.route({
		origin: start 
		destination: end 
		waypoints: waypoints
		optimizeWaypoints: true, 
		travelMode: google.maps.TravelMode.DRIVING
	}, function(response,status) {
		if (status === google.maps.DirectionsStatus.OK){
			console.log(response)
			var route = response.routes[0]
			console.log(route)
		};
	});
};

