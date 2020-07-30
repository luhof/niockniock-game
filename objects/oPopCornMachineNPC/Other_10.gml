/// @description onInteract

if(!happy){
	NewTextBox("Sir, pop-corn costs #2one coin#0.");
	NewTextBoxChoice("Buy?", 1, ["4:Yes","0:No"]);
}
else{
	NewTextBox("Sorry, pop-corn is limited to 1 per customer.");
	NewTextBox("I don't make the rules. I'm just the intern.");
}


