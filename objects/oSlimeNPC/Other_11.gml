/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBox("#1SWOOSH!!#0 You swing the sword...");
	NewTextBox("Oh no! it hitted the slime... He's dying!");
	NewTextBox("Slimmy! #2Nooooo#0!");
	NewTextBoxCallback("Oh, he pooped something", 1, NotifyItemGiven, [ITEMS.SLIME]);
	//NewTextBoxCallback("Thanks, slime!", 1, destroy);
	
	happy = true;
}
else{
	switch(global.inventory[| proposedItem]){
		case ITEMS.YOU:
			NewTextBox("You approach your face from Slimmy.");
			NewTextBox("He sneezes and pees a little.");
			NewTextBox("Urk.");
			break;
		default:
			NewTextBox("It's not very effective...");	
	}
	
}