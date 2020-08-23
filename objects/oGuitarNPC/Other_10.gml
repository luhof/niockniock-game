/// @description onInteract

hasDiscount = false;
with(oTeenagerNPC){
	if(happy){
		other.hasDiscount = true;	
	}
}

if(!hasDiscount){
		NewTextBox("Cool #2guitar#0, huuuh?");
		NewTextBox("I'll be famous with this #2guitar#0...");
	}
	else{
		NewTextBox("Sure, you can borrow my guitar!");
		NewTextBoxCallback("Help yourself #1bro#0!", 0, NotifyItemGiven, [ITEMS.GUITAR, true]);
	}



