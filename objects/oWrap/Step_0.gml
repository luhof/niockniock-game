/// @description ?
if(place_meeting(x, y, oPlayer)){
	if(x_target != -1){
		oPlayer.x = x_target;
	}
	if(y_target != -1){
		oPlayer.y = y_target;	
	}
	room_goto(r_target);
}