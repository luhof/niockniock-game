/// @desc open inventory with a receiver
/// @arg receiver

with(oPlayer){
	oPlayer.lastState = oPlayer.state;
	oPlayer.state = InventoryCheckState;
	state = InventoryCheckState;
}

with(oInventory){
	itemSelected = 0;
	inventoryOpened = true;
	inventoryJustHasBeenOpened = true;
	receiver = other;
}