/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	audio_stop_sound(sndBaby);
	NewTextBoxCallback("You give the toy ring to the baby.", 1, RemoveInventoryItem, [proposedItem]);
	NewTextBox("#1WAAAAH#0gloops");
	NewTextBox("#1......#0");
	NewTextBox("The baby swallowed the #2toy ring#0!", 1);
	NewTextBox("Uh oh...", 1);
	NewTextBox("#1......#0");
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
		case ITEMS.RUPEE:
			NewTextBox("Sure, so he can get booze, right?", 1);
			break;
		case ITEMS.BATWING:
			NewTextBox("Gross.");
			break;
		case ITEMS.GUITAR:
			NewTextBox("You play Wonderwall.", 1);
			NewTextBox("It's not very effective.", 1);
			break;
		case ITEMS.SLIME:
			NewTextBox("You drop a bit of slime on it", 1);
			NewTextBox("Yo WTF are u doing?");
			NewTextBox("Did the baby talk?", 1);
			NewTextBox("Must be your imagination.", 1);
			break;
		case ITEMS.BEER:
			NewTextBox("Sorry bro. I only drink milk.");
			NewTextBox("Did the baby talk?", 1);
			NewTextBox("Must be your imagination.", 1);
			break;
		case ITEMS.NUDEMAG:
			NewTextBox("That's not something people do.", 1);
			break;
		case ITEMS.YOU:
			NewTextBox("You approach your face from the baby.", 1);
			NewTextBox("Nothing happened.", 1);
			break;
		default:
			NewTextBox("#1WAAAAH!!!!#0");
		
	}
	
}