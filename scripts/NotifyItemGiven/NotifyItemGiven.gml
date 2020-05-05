///@desc notify screen item gotten
///@arg item
ds_list_add(global.inventory, argument[0]);
with(instance_create_layer(0, 0, layer_get_id("Instances"), oNotification)){
	currObject = argument[0];	
}