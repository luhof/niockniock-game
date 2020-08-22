with(oMusic){
	
	if(argument0 != currentMusic){
		if(currentMusic) audio_stop_sound(currentMusic);
		if(argument0){
			currentMusic = argument0;
			audio_play_sound(currentMusic, 999, true);
		}
		
	}
	
}