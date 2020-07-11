/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("What is it ?", 1, RemoveInventoryItem, [proposedItem]);
	NewTextBox("...");
	NewTextBox("...");
	NewTextBox("No...");
	NewTextBox("So that's the Pop-Corn everybody's talking about...");
	NewTextBox("It's more disturbing that I thought...");
	NewTextBox("Flesh of my siblings. Inside-out. After being burned alive.");
	NewTextBox("That's what people of the city do, huh...");
	NewTextBox("...");
	NewTextBox("I...");
	NewTextBox("I'm sorry, Niock-Niock.");
	NewTextBox("I need some time by myself...");
	//NewTextBoxCallback("You should take it!", 1, NotifyItemGiven, [ITEMS.RUPEE]);
	
	happy = true;
}
else{
	switch(global.inventory[| proposedItem]){
		case ITEMS.SWORD:
			NewTextBox("Wowzie! That's a cool sword!");
			NewTextBox("But as Corn, I'm immune to swords!");
			NewTextBox("#2CORN DUUUUUDE#0!!!!!");
			break;
		case ITEMS.COIN:
			NewTextBox("Oh! I don't need money!");
			break;
		case ITEMS.BEER:
			NewTextBox("Corn can't drink.");
			NewTextBox("Why, you ask?");
			NewTextBox("Because Corn has no mouth!");
			break;
		default:
			NewTextBox("What is that?");	
		
	}
	
}