/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("1 coin please!", 0, RemoveInventoryItem, [proposedItem]);
	NewTextBoxCallback("Thank you, enjoy your movie!", 0, NotifyItemGiven, [ITEMS.POPCORN]);
	//NewTextBoxCallback("Thanks, slime!", 1, destroy);
	
	happy = true;
}
else{
	switch(global.inventory[| proposedItem]){
		case ITEMS.POPCORN:
			NewTextBox("You already have pop-corn, lucky you.");
			NewTextBox("You can buy more if you want, but with #2coins#0.");
		default:
			NewTextBox("You can only pay pop-corn with #2coins#0.");
			break;
	}
	
}