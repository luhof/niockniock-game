/// @description onInteract

if(happy){
	NewTextBox("*#1Munch Munch#0");	
	NewTextBox("Feel free to buy something from our store, I'll give you a good price!");
}
else{
	NewTextBox("Good morning, dear #2customer#0!");
	NewTextBox("What a pleasure to have you in our sho...");
	NewTextBox("Oh screw that. Deep inside I'm just a cinema lover.");
	NewTextBox("But I don't have time to go watch movies, since I work here.");
	NewTextBox("So I installed this big TV. It sill miss the cinema experience...");
	NewTextBox("If only I had #2pop-corn#0 or something...");
	NewTextBoxChoice("Give him something?", 1, ["4:Yes","0:No"]);
}


