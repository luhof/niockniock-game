/// @desc creates new text box
/// @arg message
/// @arg background ID
/// @arg callback
/// @arg callbackArgs

if(argument_count > 3){
	NewTextBox(argument[0], argument[1], -1, argument[2], argument[3]);
}
else{
	NewTextBox(argument[0], argument[1], -1, argument[2]);
}

