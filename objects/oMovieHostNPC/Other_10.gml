/// @description onInteract

if(!happy){
	NewTextBox("Movie ticket costs #1One coin#0.");
	NewTextBox("Pop-corn costs #1One coin#0.");
	NewTextBox("But my love for independant cinema... It's priceless.");
	NewTextBoxChoice("Give him something?", 1, ["4:Yeap!","0:No"]);
}
else{
	NewTextBox("Enjoy your movie, sir.");
}


