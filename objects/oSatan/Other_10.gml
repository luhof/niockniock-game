/// @description onInteract

if(!happy){
	if(hasSpoken){
		NewTextBox("Changed your mind? You want that #2Love Potion#0?");
		NewTextBoxChoice("#1Give him something?#0", 1, ["4:Ok","0:No"]);
	}
	else{
		NewTextBox("#2Niock-Niock#0... Finally together...");
		NewTextBox("You did a great job up there.");
		NewTextBox("You phlegmatically killed a #2baby#0...");
		NewTextBox("And the #2Corn Dude#0...");
		NewTextBox("You exposed a #2young man#0 to the depths of #2pornography#0...");
		NewTextBox("You destroyed innocent #2slimes#0 and even your own #2Slimmy#0...");
		NewTextBox("And all of that for what? A #2Love Potion#0?");
		NewTextBox("To force a lady's love #2despite her refusal#0?");
		NewTextBox("...Wish granted...");
		NewTextBox("But it won't be free...");
		NewTextBoxChoice("#1Give him something?#0", 1, ["4:Ok","0:No"]);
		hasSpoken = true;
	}
}



