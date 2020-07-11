/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	happy = true;
}
else{
	switch(global.inventory[| proposedItem]){
		case ITEMS.YOU:
			NewTextBox("You are your most precious belonging.");
			NewTextBox("Keep it safe.");
		break;
		case ITEMS.COIN:
			NewTextBox("You need one hint about #2money#0?");
			NewTextBox("Listen, Niock-Niock. #2money#0 can buy #2things#0.");
			NewTextBox("There are more than one thing to buy in this world for sure!");
		break;
		case ITEMS.NUDEMAG:
			NewTextBox("Heh heh heh heh!");
			NewTextBox("Aaah, a #2nude magazine#0... Brings me back, when I was a #2teenager#0...");
		case ITEMS.DEADBABY:
			NewTextBox("#1HIDE THIS NOW!#0");
			NewTextBox("This empty body could be the #2vessel#0 for dark purposes...");
		break;
		case ITEMS.KEY:
			NewTextBox("That's the key that opens the gate in front of your house.");
			NewTextBox("If you're here, you used it already.");
			NewTextBox("See? You're smart!");
			break;
		case ITEMS.SWORD:
			NewTextBox("A sword can hurt your enemies...");
			NewTextBox("But also your friends.");
			break;
		case ITEMS.RUPEE:
			NewTextBox("Classic video game currency.");
			NewTextBox("But it's a beautiful jewel anyway, that can be #2gifted#0 to someone you love.");
		default:
			NewTextBox("What?");
	}
	
}
