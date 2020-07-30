/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("You give the toy ring to the baby.", 1, RemoveInventoryItem, [proposedItem]);
	NewTextBox("#1WAAAAH#0gloops");
	NewTextBox("#1......#0");
	NewTextBox("The baby swallowed the #2toy ring#0!", 1);
	NewTextBox("Uh oh...", 1);
	NewTextBox("#1......#0");
	NewTextBox("#1DO SOMETHING!!!! HE GETTING BLUE!#0", 1);
	NewTextBox("......");
	NewTextBox("He stopped breathing.", 1);
	NewTextBoxCallback("You should take it!", 1, NotifyItemGiven, [ITEMS.DEADBABY, true]);
	with(oMotherNPC){
		happy=true;	
	}
	
	happy = true;
}
else{
	switch(global.inventory[| proposedItem]){
		case ITEMS.SWORD:
			NewTextBox("It's not safe to give weapons to a baby.", 1);
			break;
		case ITEMS.COIN:
			NewTextBox("Sure, so he can get booze, right?", 1);
			break;
		case ITEMS.BATWING:
			NewTextBox("Gross.");
			break;
		case ITEMS.BEER:
			NewTextBox("Sorry bro. I only drink milk.");
			NewTextBox("Did the baby talk?", 1);
			NewTextBox("Must be your imagination.", 1);
			break;
		default:
			NewTextBox("#1WAAAAH!!!!#0");
		
	}
	
}