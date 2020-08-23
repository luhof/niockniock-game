/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("#1WOAH!!#0 THATS WHAT I WANTED!", 0, RemoveInventoryItem, [proposedItem]);
	NewTextBox("I'll decypher this map...#nIt says...");
	NewTextBox("Right,Right,Left,Top.");
	NewTextBox("If you forget about this, just ask me again.");
	NewTextBoxCallback("Oh, and it's dangerous to go alone, so... Take this!", 0, NotifyItemGiven, [ITEMS.RUPEE]);
	
	happy = true;
}
else{
	switch(global.inventory[| proposedItem]){
		case ITEMS.SWORD:
			NewTextBox("I alreay have a bigger sword.");
			break;
		case ITEMS.COIN:
			NewTextBox("I can't use this kind of money where I come from.");
			break;
		case ITEMS.GUITAR:
			NewTextBox("I used to play some music, too!");
			break;
		case ITEMS.NUDEMAG:
			NewTextBox("We don't share the same ethics...");
			break;
		case ITEMS.POPCORN:
			NewTextBox("#2Pop-Corn#0? Speaking of corn...");
			NewTextBox("Be careful, a Corn Monster is in the woods.");
			break;
		case ITEMS.SLIME:
			NewTextBox("Ooh, green slime! Not what I'm looking for, sorry.");
			break;
		case ITEMS.TOYRING:
			NewTextBox("I'm not 2.");
			break;
		case ITEMS.YOU:
			NewTextBox("You almost look like a hero...");
			break;
		case ITEMS.DEADBABY:
			NewTextBox("...Creepy.");
			break;
		case ITEMS.CORNCORPSE:
			NewTextBox("Huuh cool a real corn corpse! METAL!");
		break;
		default:
			NewTextBox("What is that?");	
	}
	
}