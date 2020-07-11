///@desc notify screen item gotten
///@arg item
///@arg should remove
ds_list_add(global.inventory, argument[0]);
with(instance_create_layer(0, 0, layer_get_id("Instances"), oNotification)){
	currObject = argument[0];	
}
if(argument_count > 1){
	if(argument[1] && argument[1] == true){
		instance_destroy();	
	}
}
