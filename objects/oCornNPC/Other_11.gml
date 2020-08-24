/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("What is it ?", 0, RemoveInventoryItem, [proposedItem]);
	NewTextBox("...");
	NewTextBox("So that's the Pop-Corn everybody's talking about...");
	NewTextBox("Flesh of my siblings. Inside-out. After being burned alive.");
	NewTextBox("That's what people of the city do, huh...");
	NewTextBox("...");
	NewTextBox("I'm sorry, Niock-Niock.");
	NewTextBox("I don't think I want to be part of this harrassment anymore.");
	NewTextBox("That's it, I #2lost faith in humanity#0.");
	NewTextBox("Please, for once, do something nice. End my corn suffering.");
	NewTextBoxChoice("Kill him?", 1, ["4:Sure","0:Nah."]);
	//NewTextBoxCallback("You should take it!", 1, NotifyItemGiven, [ITEMS.RUPEE]);
	
	happy = true;
}
else{
	if(!happy){		
		switch(global.inventory[| proposedItem]){
			case ITEMS.SWORD:
				NewTextBox("Wowzie! That's a cool sword!");
				NewTextBox("#2CORN DUUUUUDE#0!!!!!");
				break;
			case ITEMS.COIN:
				NewTextBox("Oh! I don't need money!");
				break;
			case ITEMS.NUDEMAG:
				NewTextBox("Humans are gross.");
				break;
			default:
				NewTextBox("What is that?");	
		
		}
	}
	else{
		if(global.inventory[| proposedItem] == ITEMS.SWORD){
			NewTextBox("You swing the #2sword#0 right in #2Corn Dude#0's eye.", 1);
			NewTextBox("It doesn't bleed (corn doesn't bleed).", 1);
			NewTextBox("The remaining eye looks at you one last time.", 1);
			NewTextBox("#1corn... duuuuuuude...#0");
			NewTextBox("#2Corn Dude#0 is dead.", 1);
			NewTextBoxCallback("You should take it!", 1, NotifyItemGiven, [ITEMS.CORNCORPSE, true]);
			
		}
	}
	
}