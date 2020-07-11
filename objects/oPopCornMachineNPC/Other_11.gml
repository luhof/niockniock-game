/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("1 coin please!", 1, RemoveInventoryItem, [proposedItem]);
	NewTextBoxCallback("Thank you, enjoy your movie!", 1, NotifyItemGiven, [ITEMS.POPCORN, true]);
	//NewTextBoxCallback("Thanks, slime!", 1, destroy);
	
	happy = true;
}
else{
	switch(global.inventory[| proposedItem]){
		default:
			NewTextBox("You can only pay pop-corn with #2coins#0.");
			break;
	}
	
}