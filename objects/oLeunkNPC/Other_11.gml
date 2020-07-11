/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("#1WOAH!!#0 THATS WHAT I WANTED!", 1, RemoveInventoryItem, [proposedItem]);
	NewTextBox("I'll decypher this map...#nIt says...");
	NewTextBox("Right,Right,Left,Top.");
	NewTextBox("If you forget about this, just ask me again.");
	NewTextBoxCallback("Oh, and it's dangerous to go alone, so... Take this!", 1, NotifyItemGiven, [ITEMS.RUPEE]);
	
	happy = true;
}
else{
	switch(global.inventory[| proposedItem]){
		case ITEMS.SWORD:
			NewTextBox("I alreay have a bigger sword.");
			break;
		case ITEMS.COIN:
			NewTextBox("I can't use this kind of money where I come from.");
			break;
		case ITEMS.BATWING:
			NewTextBox("Gross.");
			break;
		case ITEMS.BEER:
			NewTextBox("Sorry. I only drink milk.");
			break;
		default:
			NewTextBox("What is that?");	
	}
	
}