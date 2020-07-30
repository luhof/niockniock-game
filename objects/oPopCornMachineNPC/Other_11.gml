/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("1 coin please!", 0, RemoveInventoryItem, [proposedItem]);
	NewTextBoxCallback("Thank you, enjoy your movie!", 0, NotifyItemGiven, [ITEMS.POPCORN]);
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