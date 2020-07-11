/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("Woah, a love letter?", 0, RemoveInventoryItem, [proposedItem]);
	NewTextBox("Let me read it...");
	NewTextBox("...");
	NewTextBox("...#n...");
	NewTextBox("Hum, how to say it...");
	NewTextBox("Unless you have some kind of #2magic love potion#0...");
	NewTextBox("let's stay good friends, ok?");
	NewTextBoxCallback("By the way, you forgot your key. Here, take it!", 0, NotifyItemGiven, [ITEMS.KEY]);
	happy = true;
}
else{
	switch(global.inventory[| proposedItem]){
		case ITEMS.YOU:
			NewTextBox("Your giving yourself to me?");
			NewTextBox("That's hum... nice.");
		break;
		case ITEMS.COIN:
			NewTextBox("It's 2020, and you're still trying to");
			NewTextBox("get a girl's attention by giving her MONEY?");
		break;
		case ITEMS.NUDEMAG:
			NewTextBox("Keep this sticky magazine out of my sight!");
		break;
		default:
			NewTextBox("What?");
	}
	
}
