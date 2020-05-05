/// @description ?
if(!needDelete){
	currShadowRotate = Wave(-2, 2, 10, 0);

	if(keyboard_check_pressed(vk_space)){
		with(oPlayer){
			state = lastState;
			stateJustChanged = true;
		}
		needDelete = true;
	}
	
	
	if(currY > yTo) currY -= 5;
}
else{
	if(currY > yToDelete) currY -=5
	else{
		instance_destroy(self);
	}
}


