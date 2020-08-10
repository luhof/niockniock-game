/// @description go to next room
/// @description go to Satan
nextRoomTriggered = true;
nextRoomDelay = 2;

with(oCamera){
	shallFadeToBlack = true;
}

with(oPlayer){
	isGhost = true;
	spriteIdle = sPlayerGhost;
	spriteRun = sPlayerGhost;
	lastState = state;
	state = PlayerStateLocked;	
}
