/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("Woah, a love letter ?", 1, RemoveInventoryItem, [proposedItem]);
	NewTextBox("Let me read it...");
	NewTextBox("...");
	NewTextBox("...\n...");
	NewTextBox("That's sweet and all,\nbut you know I don't\love you back.");
	NewTextBox("Unless you have some kind of\nmagic love potion,\nlet's stay good friends, ok ?");
	happy = true;
}
else{
	switch(global.inventory[| proposedItem]){
		case ITEMS.YOU:
			NewTextBox("Your giving yourself to me ?");
			NewTextBox("That's hum... nice.");
		break;
		case ITEMS.COIN:
			NewTextBox("It's 2020, and you're still trying\nto get a lady love you by\ngiving her MONEY ?");
		break;
		case ITEMS.NUDEMAG:
			NewTextBox("You perv bastard ! Keep this sticky magazine\nout of my sight!");
		break;
		default:
			NewTextBox("What ?");
	}
	
}
