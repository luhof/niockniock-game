/// @description ?
if(nextRoomTriggered){
	
		nextRoomDelay -= 0.01;
		if(nextRoomDelay < 0){
			with(oPlayer){	
				x = 360;
				y = 160;
				
				
				state = PlayerStateFree;
				stateJustChanged = true;
				/*spriteRun = sPlayerGhost;
				spriteIdle = sPlayerGhost;
				isGhost = true;*/
				
				room_goto(rSatanInsideLimbo);
				
			}
		}
	
}
