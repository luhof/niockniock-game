/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("That's my #2Niock-Niock#0...", 0, RemoveInventoryItem, [proposedItem]);
	NewTextBox("#2Satan#0 thanks you with a cold laugh.", 1);
	
	happy = true;
}
else{
	switch(global.inventory[| proposedItem]){
		case ITEMS.SWORD:
			NewTextBox("You really thought I would be vulnerable to mortal weapons?");
			break;
		default:
			NewTextBox("No.");	
	}
	
}