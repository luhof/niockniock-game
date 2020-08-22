/// @description go to next room
/// @description go to Satan
nextRoomTriggered = true;
nextRoomDelay = 2;

audio_play_sound(sndEarthQuake, 10, false);

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
