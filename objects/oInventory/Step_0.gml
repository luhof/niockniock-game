/// @description ?

//open/close
/*if(keyboard_check_pressed(vk_tab) && !inventoryJustHasBeenOpened){
	inventoryOpened = false;
	with(oPlayer){
		state = lastState;	
	}
}
else if(inventoryJustHasBeenOpened){
	itemSelected = 0;
}*/

if(!inventoryOpened) exit;

//move cursor
var _keyLeft = keyboard_check_pressed(vk_left);
var _keyRight = keyboard_check_pressed(vk_right);
if(_keyLeft || _keyRight){
	var _inventorySize = ds_list_size(global.inventory)-1
	itemSelected += _keyRight - _keyLeft;
	if(itemSelected < 0) itemSelected = _inventorySize;
	else if(itemSelected > _inventorySize) itemSelected = 0;
}

// item selected. We close the inventory
if(keyboard_check_pressed(vk_space)){
	inventoryOpened = false;
	oPlayer.state = PlayerStateFree;
	if(receiver != noone){
		with(receiver){
			proposedItem = other.itemSelected;
			event_user(1);	
		}
	}
	receiver = noone;
	
}

inventoryJustHasBeenOpened = false;