/// @description onInteract

hasDiscount = false;
with(oTeenagerNPC){
	if(happy){
		other.hasDiscount = true;	
	}
}

if(!hasDiscount){
		NewTextBox("Cool guitar, huuuh?");
		NewTextBox("I'll be famous with this guitar...");
	}
	else{
		NewTextBox("Sure, you can borrow my guitar!");
		NewTextBoxCallback("Help yourself bro!", 1, NotifyItemGiven, [ITEMS.GUITAR, true]);
	}



