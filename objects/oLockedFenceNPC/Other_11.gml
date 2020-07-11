/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBox("You open the door with the #2key#0.");
	instance_destroy();
	//NewTextBoxCallback("Thanks, slime!", 1, destroy);
	
	happy = true;
}
else{
	switch(global.inventory[| proposedItem]){
		case ITEMS.YOU:
			NewTextBox("You bash your head on the door...");
			NewTextBox("It won't open.");
			break;
		default:
			NewTextBox("It's doesn't fit in the #2key hole#0.");	
	}
	
}