/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	
	NewTextBoxCallback("Thank you...", 0, RemoveInventoryItem, [proposedItem]);
	NewTextBoxCallback("#2Satan#0 thanks you with an unnerving cold laugh.", 1, ScreenShake, [15, 120]);
	NewTextBoxCallback("A laugh as cold as the feeling of your soul leaving your duck body.", 1, LaunchUserEvent3);
	
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