/// @description onInteract

hasDiscount = false;
with(oShopKeeperNPC){
	if(happy){
		other.hasDiscount = true;	
	}
}

if(!hasDiscount){
		NewTextBox("That's a map of the #2Lost Woods#0.");
		NewTextBox("It costs #2100 coin#0.");
		NewTextBox("You don't have 100 coins?");
		NewTextBox("Too bad, come back later.");
	}
	else{
		NewTextBox("HAH ! The good old #2map#0 of the #2Lost Woods#0...");
		NewTextBox("It costs #2100 coins#0.");
		NewTextBox("But for you, Niock-Niock, I may apply a tiny #299% discount#0.");
		NewTextBox("The shopkeeper starts doing hardcore calculus.", 1);
		NewTextBox("That's #21 coin#0.");
		NewTextBoxChoice("Buy?", 1, ["4:Yes","0:No"]);	
	}



