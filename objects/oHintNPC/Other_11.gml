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
			NewTextBox("Aaah, a #2nude magazine#0... ");
			NewTextBox("Brings me back, when I was a #2teenager#0...");
		case ITEMS.DEADBABY:
			NewTextBox("#1You have a dead baby in your pocket?#0");
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
			NewTextBox("It's effective against #2Slimes#0!");
			NewTextBox("Oh, you do have a #2pet Slime#0, don't you?");
			break;
		case ITEMS.RUPEE:
			NewTextBox("Classic video game currency.");
			NewTextBox("But it's a beautiful jewel anyway!");
			NewTextBox("A jewel that can be #2gifted#0 to someone you love.");
			break;
		case ITEMS.CORNCORPSE:
			NewTextBox("Poor #2Corn-Dude#0.");
			NewTextBox("He always liked other people.");
			NewTextBox("If he's in this state (death)... You killed him?");
			NewTextBox("I guess he #2lost his faith in humanity#0.");
			break;
		case ITEMS.TOYRING:
			NewTextBox("It's a jewel. But it looks like a pacifier.");
			NewTextBox("You know, the stuff you give to #2babies#0...");
			NewTextBox("But it's written... #2not suitable for children#0.");
			break;
		case ITEMS.SLIME:
			NewTextBox("The most basic video game loot.");
			NewTextBox("Hehe, imagine if we were in a video game!");
			NewTextBox("Anyway, I heard there are #2two#0 slimes in this world.");
			NewTextBox("The wizard can buy them.");
			break;
		case ITEMS.GUITAR:
			NewTextBox("Rock'n'roll!!");
			NewTextBox("The Devil's music!");
			break;
		break;
		case ITEMS.MAP:
			NewTextBox("I can't read this #2map#0 of the #2lost woods#0.");
			NewTextBox("The #2lost woods#0 are located in the west.");
			NewTextBox("If you find one #2hero#0, he may be able to read it.");
			break;
		case ITEMS.POPCORN:
			NewTextBox("Pop-corn is a classic snack that contributes to the...");
			NewTextBox("#2Cinema experience!#0");
			NewTextBox("If you showed #2pop-corn#0 to a #2guy made of corn#0...");
			NewTextBox("It would be depressing.");
			NewTextBox("I heard there are #2two#0 Pop-corn items in this world.");
			break;
		default:
			NewTextBox("What?");
	}
	
}
