/// @description ?
draw_set_color(c_white);
draw_rectangle(0,0, RESOLUTION_W, 20, false);


for(var i = 0; i<ds_list_size(global.inventory); i++){	
	var _itemSprite = global.items[# global.inventory[| i], ITEM.SPRITE];
	draw_sprite_ext(_itemSprite, 0, i*25+10, 3, 0.7, 0.7, 0, c_white, 1);
	
	//draw arrow
	if(inventoryOpened){
		if(i == itemSelected){
			draw_sprite(sInventoryArrow, 0, i*25+10, 20);	
		}
	}
}

