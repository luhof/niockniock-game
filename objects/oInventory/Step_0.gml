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

//move cursor
var _keyLeft = keyboard_check_pressed(vk_left);
var _keyRight = keyboard_check_pressed(vk_right);
if(_keyLeft || _keyRight){
	var _inventorySize = ds_list_size(global.inventory)-1
	itemSelected += _keyRight - _keyLeft;
	if(itemSelected < 0) itemSelected = _inventorySize;
	else if(itemSelected > _inventorySize) itemSelected = 0;
}

if(keyboard_check_pressed(vk_space)){
	if(receiver != noone){
		with(receiver){
			event_user(1);	
		}
	}
}

inventoryJustHasBeenOpened = false;