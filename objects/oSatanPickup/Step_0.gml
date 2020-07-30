/// @description ?
if(shallFadeToBlack){
	blackOpacity += 0.01;
	if(blackOpacity >= 1){
		//delay before going to next room
		nextRoomDelay -= 0.01;
		if(nextRoomDelay < 0){
			room_goto(rSatanLair);	
		}
	}
}
