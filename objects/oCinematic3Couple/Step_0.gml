/// @description ?
cinematicTimeout -=1;
headFallTimeout -= 1;

if(headFallTimeout <= 0){
	image_index = 1;	
}

if(cinematicTimeout <= 0){
	room_goto_next();	
}