hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

PlayerCollision();

//update sprite index
var _oldSprite = sprite_index;

if(inputMagnitude != 0){
	direction = inputDirection;
	sprite_index = spriteRun;
}
else{
	sprite_index = spriteIdle;	
}
if(_oldSprite != sprite_index) localFrame = 0;

//update image index
PlayerAnimateScript();

if(keyInv){
	state = PlayerStateInventory;
	oInventory.inventoryOpened = true;
	oInventory.inventoryJustHasBeenOpened = true;
	oInventory.itemSelected = 0;
}

//change state
else if(keyActivate && !stateJustChanged){
	
	var _activateX = lengthdir_x(15, direction);
	var _activateY = lengthdir_y(15, direction);
	
	// check for entity to activate
	activate = instance_position(x+_activateX, y+_activateY, pEntity);
	
	if(activate == noone){
		// 2 nothing
	}
	else{
		// 3 activate object script
		//ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
		// 4 if there is an NPC make it face towards us
		if(activate.entityNPC){
			with(activate){
				event_user(0);	
			}
			with(activate){
				direction = point_direction(x, y, other.x, other.y);	
				image_index = CARDINAL_DIR;
			}
		}
		else if (activate.entityActivateScript != -1){
			ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);	
		}
		
	}
	
	
}

stateJustChanged = false;