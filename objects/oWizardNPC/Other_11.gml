/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("One slime.", 0, RemoveInventoryItem, [proposedItem]);
	NewTextBoxCallback("That's worth one coin.", 0, NotifyItemGiven, [ITEMS.COIN]);
}
else{
	switch(global.inventory[| proposedItem]){
		default:
			NewTextBox("That's not #2slime#0...");
		
	}
	
}