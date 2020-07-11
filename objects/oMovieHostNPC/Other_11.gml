/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("Thank youuu.", 1, RemoveInventoryItem, [proposedItem]);
	NewTextBoxCallback("Here's you ticket!", 1, NotifyItemGiven, [ITEMS.MOVIETICKET]);
	
	happy = true;
}
else{
	switch(global.inventory[| proposedItem]){
		case ITEMS.SWORD:
			NewTextBox("If you swing this I'll have to call security..");
			break;
		case ITEMS.BEER:
			NewTextBox("I'm not on my break yet...");
			break;
		default:
			NewTextBox("That's not very professional, sir.");	
		
	}
	
}