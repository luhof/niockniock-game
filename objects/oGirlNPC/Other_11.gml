/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("Woah, a love letter?", 0, RemoveInventoryItem, [proposedItem]);
	NewTextBox("Let me read it...");
	NewTextBox("...");
	NewTextBox("How to say it...");
	NewTextBox("Unless you have some kind of #2magic love potion#0...");
	NewTextBox("let's stay good friends, ok?");
	NewTextBoxCallback("By the way, you forgot your key. Here, take it!", 0, NotifyItemGiven, [ITEMS.KEY]);
	happy = true;
}
else{
	switch(global.inventory[| proposedItem]){
		case ITEMS.YOU:
			NewTextBox("Your giving yourself to me?");
			NewTextBox("That's hum... nice.");
		break;
		case ITEMS.COIN:
		case ITEMS.RUPEE:
			NewTextBox("It's 2020, and you're still trying to");
			NewTextBox("get a girl's attention by giving her MONEY?");
		break;
		case ITEMS.NUDEMAG:
			NewTextBox("Keep this sticky magazine out of my sight!");
		break;
		case ITEMS.GUITAR:
			NewTextBox("You start playing Wonderwall", 1);
			NewTextBox("Lame!");
		break;
		case ITEMS.MAP:
			NewTextBox("No, I won't go on an adventure with you.");
		break;
		case ITEMS.POPCORN:
			NewTextBox("Pop-corn? No thanks.");
		break;
		case ITEMS.SLIME:
			NewTextBox("What happened to Slimmy?");
		break;
		case ITEMS.SWORD:
			NewTextBox("Impressing a girl with a weapon is not the way to go, Niock-Niock.");
		break;
		case ITEMS.KEY:
			NewTextBox("That's the key to open the white door, just outside.");
		break;
		case ITEMS.CORNCORPSE:
		case ITEMS.DEADBABY:
			NewTextBox("You refrain yourself from showing her a dead body.", 1);
		break;
		default:
			NewTextBox("What?");
	}
	
}
