/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("#1WOAH!!#0 A real #2Rupee#0?", 0, RemoveInventoryItem, [proposedItem]);
	NewTextBox("I'll trade it for my teat-shaped jewel.");
	NewTextBox("Be careful, it's written in small :");
	NewTextBox("#2Not suited for children#0!");
	NewTextBoxCallback("Just give it to your own lover, thank me later!", 0, NotifyItemGiven, [ITEMS.TOYRING]);
	
	happy = true;
}
else{
	switch(global.inventory[| proposedItem]){
		case ITEMS.COIN:
			NewTextBox("If I give one coin to my girlfriend for her birthday...");
			NewTextBox("I'm not romantic enough to not get dumped for that.");
			break;
		case ITEMS.NUDEMAG:
			NewTextBox("Good idea, but no thanks.");
			break;
		case ITEMS.CORNCORPSE:
			NewTextBox("Showing her a dead corpse isn't very romantic...");
			break;
		case ITEMS.SWORD:
			NewTextBox("She'll disapprove it. She doesn't like my shurikens so...");
			break;
		case ITEMS.MAP:
			NewTextBox("Cool map, I'm sure an adventurer could like it.");
			break;
		case ITEMS.SLIME:
			NewTextBox("I don't want to know what you think we'll do with this.");
			break;
		case ITEMS.YOU:
			NewTextBox("I'm more handsome than you.");
			break;
		case ITEMS.POPCORN:
			NewTextBox("You know this old joke where you cut a hole in");
			NewTextBox("the bottom of the pop-corn box and...");
			NewTextBox("forget it.");
			break;
		default:
			NewTextBox("What is that?");	
	}
	
}