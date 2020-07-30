/// @description onItemGiven

if(global.inventory[| proposedItem] == wantedItem){
	NewTextBoxCallback("#1HUUUUH#0!", 1, RemoveInventoryItem, [proposedItem]);
	NewTextBox("I asked for one of these for christmas...");
	NewTextBox("But my mom said no and got me socks instead.");
	NewTextBox("I can lend you my #2guitar#0 if you want, #2bro#0.");
	
	happy = true;
}
else{
	switch(global.inventory[| proposedItem]){
		case ITEMS.SWORD:
			NewTextBox("Cool sword.");
			break;
		case ITEMS.COIN:
			NewTextBox("I don't need money.");
			NewTextBox("I will soon be a famous and rich rock star.");
			break;
		case ITEMS.SLIME:
			NewTextBox("I'm not 7.");
			break;
		default:
			NewTextBox("Huuuh...");	
	}
	
}