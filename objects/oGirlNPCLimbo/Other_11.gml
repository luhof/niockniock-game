/// @description onItemGiven

//is she in love
if(happy){
	if(global.inventory[| proposedItem] == wantedItem){
		NewTextBoxCallback("You put #2your dead body#0 next to her.", 1, RemoveInventoryItem, [proposedItem]);
		NewTextBoxCallback("...", 0, LaunchUserEvent3);
	}
	else{
		switch(global.inventory[| proposedItem]){
			default:
				NewTextBox("It doesn't work.");
		}
	
	}
}
else{
	if(global.inventory[| proposedItem] == wantedItem){
		NewTextBoxCallback("You put the #2love potion#0 on the bed.", 1, RemoveInventoryItem, [proposedItem]);
		NewTextBox("Huh?");
		NewTextBox("I don't remember buying this weird soda...");
		NewTextBox("Anyway, I was getting thirsty.");
		NewTextBox("She drinks the #2love potion#0.");
		NewTextBox("Woah, I feel...");
		NewTextBox("I feel...");
		NewTextBox("Like I could #2fall in love#0 with the #2first person I see#0...");
		happy = true;
		wantedItem = ITEMS.YOUDEAD;
	}
	else{
		switch(global.inventory[| proposedItem]){
			case ITEMS.YOUDEAD:
				NewTextBox("She would be scared.", 1);
			break;
			default:
				NewTextBox("It doesn't work.");
		}
	
	}
}


