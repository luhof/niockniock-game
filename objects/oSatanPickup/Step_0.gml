/// @description ?
if(nextRoomTriggered){
	
		nextRoomDelay -= 0.01;
		if(nextRoomDelay < 0){
			with(oPlayer){	
				x = 150;
				y = 150;
				lastState = state;
				
				state = PlayerStateFree;
				stateJustChanged = true;
				/*spriteRun = sPlayerGhost;
				spriteIdle = sPlayerGhost;
				isGhost = true;*/
				room_goto(rSatanLair);
				
			}
		}
	
}
