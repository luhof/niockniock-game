/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("#1HUUUUH#0!", 0, RemoveInventoryItem, [proposedItem]);
	NewTextBox("I asked for one of these for christmas...");
	NewTextBox("But my mom said no and got me socks instead.");
	NewTextBox("I can lend you my #2guitar#0 if you want, #1bro#0.");
	
	happy = true;
}
else{
	switch(global.inventory[| proposedItem]){
		case ITEMS.SWORD:
			NewTextBox("Cool sword.");
			break;
		case ITEMS.TOYRING:
			NewTextBox("Ah, looks like the thing for #2babies#0.");
			break;
		case ITEMS.COIN:
		case ITEMS.RUPEE:
			NewTextBox("I don't need money.");
			NewTextBox("I will soon be a famous and rich rock star.");
			break;
		case ITEMS.SLIME:
			NewTextBox("Slime is cool, you can sell it somewhere!");
			break;
		case ITEMS.DEADBABY:
			NewTextBox("As you begin to move the dead baby from your inventory,", 1);
			NewTextBox("you realize it's not a great idea.", 1);
			break;
		case ITEMS.MAP:
			NewTextBox("A treasure map? It's for #2adventurers#0!");
			break;
		case ITEMS.POPCORN:
			NewTextBox("Huuuh no thanks, I try to quit pop-corn.");
			break;
		default:
			NewTextBox("Huuuh...");	
	}
	
}