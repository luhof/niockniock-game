/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("One slime.", 1, RemoveInventoryItem, [proposedItem]);
	NewTextBoxCallback("That's worth one coin.", 1, NotifyItemGiven, [ITEMS.COIN]);
}
else{
	switch(global.inventory[| proposedItem]){
		default:
			NewTextBox("That's not #1slime#0...");
		
	}
	
}