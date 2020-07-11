/// @description ?
if(place_meeting(x, y, oPlayer)){
	if(x_target != -1){
		oPlayer.x = x_target;
	}
	if(y_target != -1){
		oPlayer.y = y_target;	
	}
	
	with(oLostWoodTracker){
	// we move the data
	currentRoute[0] = currentRoute[1];
	currentRoute[1] = currentRoute[2];
	currentRoute[2] = currentRoute[3];
	currentRoute[3] = other.route_direction;
	
	//crappy test
	if((currentRoute[0] == solution[0])
		&& (currentRoute[1] == solution[1])
		&& (currentRoute[2] == solution[2])
		&& (currentRoute[3] == solution[3])
	){
		room_goto(destination_room)
	}
}
}

