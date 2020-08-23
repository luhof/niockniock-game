/// @description on item given

if (global.inventory[| proposedItem] == ITEMS.YOU){
	NewTextBox("You stand on the pedestal, but nothing happens.", 1);		
}

else{
	currentObj = global.inventory[| proposedItem];
var currentName =  global.items[# currentObj, ITEM.NAME];
	RemoveInventoryItem(proposedItem);

	var hasDeadBabyCorpse = false;
	var hasDeadCornCorpse = false;
	var hasRockNRoll = false;

	with(oSatanPickup){
		if(currentObj == ITEMS.DEADBABY){
			hasDeadBabyCorpse = true;
		}
		else if(currentObj == ITEMS.CORNCORPSE){
			hasDeadCornCorpse = true;
		}
		else if(currentObj == ITEMS.GUITAR){
			hasRockNRoll = true;
		}
	}

	if(hasDeadBabyCorpse && hasDeadCornCorpse && hasRockNRoll){
		audio_play_sound(sndEarthQuake, 10, false);
		NewTextBoxCallback("You added a "+currentName+ ".", 1, ScreenShake, [7, 120]);
		NewTextBoxCallback("You hear a loud noise.", 1, ScreenShake, [15, 120]);
		NewTextBoxCallback("You feel nauseous.", 1, LaunchUserEvent3);
	}
	else{
		NewTextBox("You added a "+currentName+ ".", 1);
	}
}

