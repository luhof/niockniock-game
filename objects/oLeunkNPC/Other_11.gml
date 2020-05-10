/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("#1WOAH!!#0 THATS WHAT I WANTED!", 1, RemoveInventoryItem, [proposedItem]);
	NewTextBox("Hey...#nI got this in some adventure. Yeah that's right!");
	NewTextBoxCallback("You should take it!", 1, NotifyItemGiven, [ITEMS.RUPEE]);
	
	happy = true;
}
else{
	NewTextBox("Meh.");	
}
