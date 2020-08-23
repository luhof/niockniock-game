/// @description go to Satan
nextRoomTriggered = true;
nextRoomDelay = 3;


with(oCamera){
	shallFadeToBlack = true;
}

with(oPlayer){
	lastState = state;
	state = PlayerStateLocked;	
}
