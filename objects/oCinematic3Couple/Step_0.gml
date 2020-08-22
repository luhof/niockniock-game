/// @description ?
cinematicTimeout -=1;
headFallTimeout -= 1;

if(headFallTimeout <= 0){
	if(!hasHeadFallen){
		audio_play_sound(sndBoneCrack, 10, false);	
	}
	hasHeadFallen = true;
	
	
	image_index = 1;	
}

if(cinematicTimeout <= 0){
	room_goto_next();	
}