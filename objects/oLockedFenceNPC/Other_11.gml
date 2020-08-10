/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("You open the door with the #2key#0.", 1, RemoveInventoryItem, proposedItem);
	instance_destroy();
	//NewTextBoxCallback("Thanks, slime!", 1, destroy);
	
	happy = true;
}
else{
	switch(global.inventory[| proposedItem]){
		case ITEMS.YOU:
			NewTextBox("You bash your head on the door...", 1);
			NewTextBox("It won't open.", 1);
			break;
		case ITEMS.LETTER:
			NewTextBox("You try to slide the letter in the key hole.", 1);
			NewTextBox("It won't open.", 1);
			break;
		default:
			NewTextBox("It's doesn't fit in the #2key hole#0.", 1);	
	}
	
}