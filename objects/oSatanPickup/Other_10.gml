/// @description user interact
var currentName =  global.items[# currentObj, ITEM.NAME];
if(currentObj == ITEMS.SATANSLOT){
	NewTextBox("There is nothing on the pedestal.", 1);
	NewTextBoxChoice("Add something?", 1, ["4:Yes","0:No"]);
}
else{
	NewTextBox("There is a "+currentName+" on the pedestal.", 1);
	NewTextBoxChoice("Take it back?", 1, ["7:Yes","0:No"]);
}

