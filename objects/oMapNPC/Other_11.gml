/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("1 coin please!", 1, RemoveInventoryItem, [proposedItem]);
	NewTextBoxCallback("Thank you!", 1, NotifyItemGiven, [ITEMS.MAP, true]);
	//NewTextBoxCallback("Thanks, slime!", 1, destroy);
	
	happy = true;
}
else{
	switch(global.inventory[| proposedItem]){
		default:
			NewTextBox("I only take #2coins#0.");	
	}
	
}