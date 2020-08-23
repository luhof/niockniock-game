/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("Pop-corn? For me?", 0, RemoveInventoryItem, [proposedItem]);
	NewTextBox("Thanks, dear customer!");
	NewTextBox("I can trade it with this #2nude magazine#0...");
	NewTextBox("I'm not allowed to sell used items anyway...");
	NewTextBox("The shopkeeper winks at you.",1);
	NewTextBox("Feel free to look at our items on sale. I may apply an extra discount!");
	NewTextBoxCallback("Hey! Don't forget your #2nude magazine#0!", 0, NotifyItemGiven, [ITEMS.NUDEMAG]);

	
	
	
	happy = true;
}
else{
	switch(global.inventory[| proposedItem]){
		case ITEMS.SWORD:
			NewTextBox("Swords are not allowed in this shop.");
			break;
		case ITEMS.COIN:
			NewTextBox("If you want to buy something go interact with it.");
			NewTextBox("(with the spacebar)");
			break;
		case ITEMS.SLIME:
			NewTextBox("Gross... Hey, the #2wizard#0 buys #2slime#0 I think.");
			break;
		default:
			NewTextBox("What?");	
	}
	
}