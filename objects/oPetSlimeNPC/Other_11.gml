/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBox("#1SWOOSH!!#0 You playfully swing the sword...", 1);
	NewTextBox("Oh no! it hit the slime... He's dying!", 1);
	NewTextBox("Slimmy! #2Nooooo#0!", 1);
	NewTextBoxCallback("Oh, he pooped something", 1, NotifyItemGiven, [ITEMS.SLIME, true]);
	//instance_destroy();
	//NewTextBoxCallback("Thanks, slime!", 1, destroy);
	
	happy = true;
}
else{
	switch(global.inventory[| proposedItem]){
		case ITEMS.YOU:
			NewTextBox("You approach your face from Slimmy.", 1);
			NewTextBox("He sneezes and pees a little.", 1);
			NewTextBox("Urk.", 1);
			break;
		default:
			NewTextBox("It's not very effective...");	
	}
	
}