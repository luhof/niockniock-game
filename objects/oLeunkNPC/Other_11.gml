/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("WOAH THATS WHAT I WANTED!", 1, RemoveInventoryItem, [proposedItem]);
	NewTextBox("Hey...\nI got this in some adventure...");
	NewTextBoxCallback("You should take it !", 1, NotifyItemGiven, [ITEMS.RUPEE]);
	
	happy = true;
}
else{
	NewTextBox("Meh.");	
}
