/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("#1WOAH!!#0 A real #2Rupee#0?", 0, RemoveInventoryItem, [proposedItem]);
	NewTextBox("I'll trade it for my teat-shaped jewel.");
	NewTextBoxCallback("Just give it to your own babe, bro, thank me later!", 0, NotifyItemGiven, [ITEMS.TOYRING]);
	
	happy = true;
}
else{
	switch(global.inventory[| proposedItem]){
		case ITEMS.COIN:
			NewTextBox("If I give one coin to my girlfriend for her birthday...");
			NewTextBox("I'm not romantic enough to not get dumped for that.");
			break;
		case ITEMS.BEER:
			NewTextBox("I could use some cheap beer, but no thanks.");
			break;
		default:
			NewTextBox("What is that?");	
	}
	
}