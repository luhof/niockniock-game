/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("#1WOAH!!#0 THATS WHAT I WANTED!", 1, RemoveInventoryItem, [proposedItem]);
	NewTextBox("Hey...#nI got this in some adventure. You should take it!");
	NewTextBoxCallback("You should take it!", 1, NotifyItemGiven, [ITEMS.RUPEE]);
	
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