/// @description create
currShadowRotate = 0;
currObject = ITEMS.COIN;

yTo = 0;
currY = RESOLUTION_H;
needDelete = false;
yToDelete = -RESOLUTION_H;


audio_play_sound(sndGotItem, 10, false);
with(oPlayer){
	state = PlayerStateLocked;
}

