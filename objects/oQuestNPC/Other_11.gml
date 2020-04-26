/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("WOAH THATS WHAT I WANTED", 1, RemoveInventoryItem, [proposedItem]);
	happy = true;
}
else{
	NewTextBox("Meh.");	
}
