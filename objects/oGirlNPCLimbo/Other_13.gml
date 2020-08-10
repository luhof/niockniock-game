/// @description go to end
with(oInventory){
	instance_destroy(self)	
}
with(oCamera){
	instance_destroy(self)	
}
with(oPlayer){
	instance_destroy(self)	
}
room_goto(rCinematic1);
