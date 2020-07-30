/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBox("#1SWOOSH!!#0 You swing the sword...", 1);
	NewTextBox("You hit the #2Monster#0!", 1);
	NewTextBox("You win!", 1);
	NewTextBox("You earn #24#0XP!", 1);
	NewTextBoxCallback("You looted #2Slime#0!", 1, NotifyItemGiven, [ITEMS.SLIME, true]);
	
	happy = true;
}
else{
	switch(global.inventory[| proposedItem]){
		case ITEMS.YOU:
			NewTextBox("You approach your face from the monster.");
			NewTextBox("He seems evil.");
			break;
		default:
			NewTextBox("It's not very effective...");	
	}
	
}