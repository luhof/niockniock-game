/// @description go to Satan
nextRoomTriggered = true;
nextRoomDelay = 3;
audio_play_sound(sndEarthQuake, 10, false);

with(oCamera){
	shallFadeToBlack = true;
}

with(oPlayer){
	lastState = state;
	state = PlayerStateLocked;	
}
