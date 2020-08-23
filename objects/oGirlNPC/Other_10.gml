/// @description onInteract

if(happy){
	NewTextBox("Don't you have stuff to do?", 0);
	NewTextBoxChoice("Give her something?", 1, ["4:Sure","0:Nop"]);
}
else{
	NewTextBox("Oh, It's you...", 0);
	NewTextBox("Again...", 0);
	NewTextBox("So hum...\nWhat do you want?", 0);
	NewTextBoxChoice("Give her something?", 1, ["4:Sure","0:Nop"]);
}


